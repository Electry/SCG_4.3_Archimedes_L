.class public Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxFactory;
.super Ljava/lang/Object;
.source "GoldBoxFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGoldBoxView(Landroid/content/Context;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxControllerImpl;-><init>(Landroid/content/Context;)V

    .line 13
    .local v0, "controller":Lcom/lenovo/scg/common/le3d/Le3dController;
    const v2, -0x20000001

    invoke-static {p0, v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewFactory;->create(Landroid/content/Context;I)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    move-result-object v1

    .line 14
    .local v1, "glSurfaceView":Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;
    sget-object v2, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-interface {v1, v2, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)Z

    .line 15
    return-object v1
.end method
