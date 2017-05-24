.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$11;
.super Ljava/util/TimerTask;
.source "BackgroundBlurEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->initTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 762
    return-void
.end method
