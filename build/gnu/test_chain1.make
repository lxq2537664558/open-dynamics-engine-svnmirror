# C++ Console Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=DebugDLL
endif

ifeq ($(CONFIG),DebugDLL)
  BINDIR := ../../lib/DebugDLL
  LIBDIR := ../../lib/DebugDLL
  OBJDIR := obj/chain1/DebugDLL
  OUTDIR := ../../lib/DebugDLL
  CPPFLAGS := -MD -D "_CRT_SECURE_NO_DEPRECATE" -D "WIN32" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) ../../lib/DebugDLL/ode.dll ../../lib/DebugDLL/drawstuff.dll -luser32 -lwinmm -lgdi32 -lopengl32 -lglu32
  LDDEPS := ../../lib/DebugDLL/ode.dll ../../lib/DebugDLL/drawstuff.dll
  TARGET := test_chain1.exe
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),ReleaseDLL)
  BINDIR := ../../lib/ReleaseDLL
  LIBDIR := ../../lib/ReleaseDLL
  OBJDIR := obj/chain1/ReleaseDLL
  OUTDIR := ../../lib/ReleaseDLL
  CPPFLAGS := -MD -D "_CRT_SECURE_NO_DEPRECATE" -D "WIN32" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) ../../lib/ReleaseDLL/ode.dll ../../lib/ReleaseDLL/drawstuff.dll -luser32 -lwinmm -lgdi32 -lopengl32 -lglu32
  LDDEPS := ../../lib/ReleaseDLL/ode.dll ../../lib/ReleaseDLL/drawstuff.dll
  TARGET := test_chain1.exe
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),DebugLib)
  BINDIR := ../../lib/DebugLib
  LIBDIR := ../../lib/DebugLib
  OBJDIR := obj/chain1/DebugLib
  OUTDIR := ../../lib/DebugLib
  CPPFLAGS := -MD -D "_CRT_SECURE_NO_DEPRECATE" -D "WIN32" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) ../../lib/DebugLib/ode.lib ../../lib/DebugLib/drawstuff.lib -luser32 -lwinmm -lgdi32 -lopengl32 -lglu32
  LDDEPS := ../../lib/DebugLib/ode.lib ../../lib/DebugLib/drawstuff.lib
  TARGET := test_chain1.exe
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),ReleaseLib)
  BINDIR := ../../lib/ReleaseLib
  LIBDIR := ../../lib/ReleaseLib
  OBJDIR := obj/chain1/ReleaseLib
  OUTDIR := ../../lib/ReleaseLib
  CPPFLAGS := -MD -D "_CRT_SECURE_NO_DEPRECATE" -D "WIN32" -I "../../include"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) ../../lib/ReleaseLib/ode.lib ../../lib/ReleaseLib/drawstuff.lib -luser32 -lwinmm -lgdi32 -lopengl32 -lglu32
  LDDEPS := ../../lib/ReleaseLib/ode.lib ../../lib/ReleaseLib/drawstuff.lib
  TARGET := test_chain1.exe
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

OBJECTS := \
	$(OBJDIR)/test_chain1.o \

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
	@echo Linking test_chain1
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning test_chain1
	-@rm -rf $(OUTDIR)/$(TARGET) $(OBJDIR)

$(OBJDIR)/test_chain1.o: ../../ode/test/test_chain1.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/resources.res: ../../drawstuff/src/resources.rc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@windres $< -O coff -o $@

-include $(OBJECTS:%.o=%.d)

