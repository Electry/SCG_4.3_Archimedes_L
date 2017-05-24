.class public Lcom/lenovo/scg/common/le3d/Le3dWindowFactory;
.super Ljava/lang/Object;
.source "Le3dWindowFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;,
        Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;Lcom/lenovo/scg/common/le3d/Le3dController;I)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 4
    .param p0, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "glSurfaceView"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    .param p3, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;
    .param p4, "orientation"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    const/4 v1, 0x0

    .line 22
    .local v1, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->setLe3dControllerProxy(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V

    .line 52
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->setLe3dGLSurfaceView(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;)V

    .line 53
    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    if-eq p0, v2, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->entry()V

    .line 57
    :cond_0
    return-object v1

    .line 24
    :pswitch_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;

    .end local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    invoke-direct {v0, p3}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 25
    .restart local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    .end local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 26
    .restart local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    goto :goto_0

    .line 36
    :pswitch_2
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    .end local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    invoke-direct {v0, p3}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 37
    .restart local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    new-instance v1, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .end local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    const/4 v2, 0x0

    invoke-direct {v1, p1, p4, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;II)V

    .line 38
    .restart local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    goto :goto_0

    .line 40
    :pswitch_3
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    .end local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    invoke-direct {v0, p3}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;-><init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V

    .line 41
    .restart local v0    # "controllerProxy":Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    new-instance v1, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .end local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    const/4 v2, 0x1

    invoke-direct {v1, p1, p4, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;II)V

    .line 42
    .restart local v1    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
