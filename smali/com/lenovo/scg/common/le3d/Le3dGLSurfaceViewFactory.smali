.class public Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewFactory;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .prologue
    .line 8
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
