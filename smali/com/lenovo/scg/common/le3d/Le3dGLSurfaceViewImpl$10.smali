.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->onSingleTapUp(FF)V

    .line 426
    return-void
.end method
