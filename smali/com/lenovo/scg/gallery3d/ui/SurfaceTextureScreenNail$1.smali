.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

.field final synthetic val$target:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->val$target:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->val$target:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$000(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->val$target:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$002(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->resetFboDrawTexture()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$100(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;->val$target:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$002(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    goto :goto_0
.end method
