# C++ Static Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=DebugDLL
endif

ifeq ($(CONFIG),DebugDLL)
  BINDIR := ../../lib/DebugDLL
  LIBDIR := ../../lib/DebugDLL
  OBJDIR := obj/drawstuff/DebugDLL
  OUTDIR := ../../lib/DebugDLL
  CPPFLAGS := -MD -D "WIN32" -D "DS_DLL" -D "USRDLL" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -luser32 -lopengl32 -lglu32 -lwinmm -lgdi32
  LDDEPS :=
  TARGET := drawstuff.dll
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),ReleaseDLL)
  BINDIR := ../../lib/ReleaseDLL
  LIBDIR := ../../lib/ReleaseDLL
  OBJDIR := obj/drawstuff/ReleaseDLL
  OUTDIR := ../../lib/ReleaseDLL
  CPPFLAGS := -MD -D "WIN32" -D "DS_DLL" -D "USRDLL" -I "../../include"
  CFLAGS += $(CPPFLAGS) -O3 -fomit-frame-pointer
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -luser32 -lopengl32 -lglu32 -lwinmm -lgdi32
  LDDEPS :=
  TARGET := drawstuff.dll
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),DebugLib)
  BINDIR := ../../lib/DebugLib
  LIBDIR := ../../lib/DebugLib
  OBJDIR := obj/drawstuff/DebugLib
  OUTDIR := ../../lib/DebugLib
  CPPFLAGS := -MD -D "WIN32" -D "DS_LIB" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -luser32 -lopengl32 -lglu32 -lwinmm -lgdi32
  LDDEPS :=
  TARGET := drawstuff.lib
  BLDCMD = ar -cr $(OUTDIR)/$(TARGET) $(OBJECTS); ranlib $(OUTDIR)/$(TARGET)
endif

ifeq ($(CONFIG),ReleaseLib)
  BINDIR := ../../lib/ReleaseLib
  LIBDIR := ../../lib/ReleaseLib
  OBJDIR := obj/drawstuff/ReleaseLib
  OUTDIR := ../../lib/ReleaseLib
  CPPFLAGS := -MD -D "WIN32" -D "DS_LIB" -I "../../include"
  CFLAGS += $(CPPFLAGS) -O3 -fomit-frame-pointer
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -s -luser32 -lopengl32 -lglu32 -lwinmm -lgdi32
  LDDEPS :=
  TARGET := drawstuff.lib
  BLDCMD = ar -cr $(OUTDIR)/$(TARGET) $(OBJECTS); ranlib $(OUTDIR)/$(TARGET)
endif

OBJECTS := \
	$(OBJDIR)/drawstuff.o \
	$(OBJDIR)/windows.o \

RESOURCES := \
	$(OBJDIR)/resources.res \

CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking drawstuff
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning drawstuff
	-@rm -rf $(OUTDIR)/$(TARGET) $(OBJDIR)

$(OBJDIR)/drawstuff.o: ../../drawstuff/src/drawstuff.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/windows.o: ../../drawstuff/src/windows.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/resources.res: ../../drawstuff/src/resources.rc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@windres $< -O coff -o $@

-include $(OBJECTS:%.o=%.d)

