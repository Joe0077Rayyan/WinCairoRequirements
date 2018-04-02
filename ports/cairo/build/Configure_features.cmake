if(APPLE)
    set(CAIRO_HAS_QUARTZ_SURFACE 1)
    set(CAIRO_HAS_QUARTZ_FONT 1)
    set(CAIRO_HAS_QUARTZ_IMAGE_SURFACE 1)
endif()

if(BEOS)
    set(CAIRO_HAS_BEOS_SURFACE 1)
endif()

if(OS2)
    set(CAIRO_HAS_OS2_SURFACE 1)
endif()

if(WIN32)
    set(CAIRO_HAS_WIN32_SURFACE 1)
    set(CAIRO_HAS_WIN32_FONT 1)
endif()

if(COGL_FOUND)
    set(CAIRO_HAS_COGL_SURFACE 1)
endif()

if(DIRECTFB_FOUND)
    set(CAIRO_HAS_DIRECTFB_SURFACE 1)
endif()

if(LIBDRM_FOUND)
    set(CAIRO_HAS_DRM_SURFACE 1)
endif()

if(FREETYPE_FOUND)
    set(CAIRO_HAS_FT_FONT 1)
endif()

if(FONTCONFIG_FOUND)
    set(CAIRO_HAS_FC_FONT 1)
endif()

if(GLIB_FOUND)
    set(CAIRO_HAS_GOBJECT_FUNCTIONS 1)
endif()

if(LIBXML2_FOUND)
    set(CAIRO_HAS_XML_SURFACE 1)
endif()

if(MESA_FOUND)
    set(CAIRO_HAS_GALLIUM_SURFACE 1)
endif()

if(OPENGL_FOUND)
    set(CAIRO_HAS_GL_SURFACE 1)
endif()

if(PNG_FOUND)
    set(CAIRO_HAS_PNG_FUNCTIONS 1)
endif()

if(QT_FOUND)
    set(CAIRO_HAS_QT_SURFACE 1)
endif()

if(X11_FOUND)
    set(CAIRO_HAS_XLIB_SURFACE 1)
    set(CAIRO_HAS_XLIB_XRENDER_SURFACE 1)
    set(CAIRO_HAS_XCB_SURFACE 1)
    set(CAIRO_HAS_XLIB_XCB_FUNCTIONS 1)
    set(CAIRO_HAS_XCB_SHM_FUNCTIONS 1)
endif()

if(ZLIB_FOUND)
    set(CAIRO_HAS_PS_SURFACE 1)
    set(CAIRO_HAS_PDF_SURFACE 1)
endif()

if(SKIA_FOUND)
    set(CAIRO_HAS_SKIA_SURFACE 1)
endif()

set(CAIRO_HAS_SVG_SURFACE 1)
set(CAIRO_HAS_SCRIPT_SURFACE 1)
set(CAIRO_HAS_INTERPRETER 1)


set(CAIRO_HAS_GLESV2_SURFACE 0)
set(CAIRO_HAS_VG_SURFACE 0)
set(CAIRO_HAS_EGL_FUNCTIONS 0)
set(CAIRO_HAS_GLX_FUNCTIONS 0)
set(CAIRO_HAS_WGL_FUNCTIONS 0)
set(CAIRO_HAS_TEST_SURFACES 0)
set(CAIRO_HAS_TEE_SURFACE 0)

set(CAIRO_HAS_PTHREAD 0)
set(CAIRO_HAS_TRACE 0)
set(CAIRO_HAS_SYMBOL_LOOKUP 0)

configure_file(features.h.cmake ${CMAKE_BINARY_DIR}/cairo-features.h)
configure_file(features.h.cmake ${CMAKE_BINARY_DIR}/src/cairo-features.h)
