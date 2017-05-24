.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->destoryLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

.field final synthetic val$s:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->val$s:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$400(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$400(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mDestroyType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$500(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mDestroyType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$500(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    if-ne v0, v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$400(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->val$s:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 318
    :cond_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$400(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SWITCH_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    goto :goto_0
.end method
