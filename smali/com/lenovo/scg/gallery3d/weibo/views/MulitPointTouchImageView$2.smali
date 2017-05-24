.class Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;
.super Ljava/lang/Object;
.source "MulitPointTouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslateDur(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;FJF)V
    .locals 1

    .prologue
    .line 509
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$startTime:J

    iput p5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$incrementPerMs:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 512
    .local v2, "now":J
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$durationMs:F

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$startTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 514
    .local v0, "currentMs":F
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    iget v6, v6, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslate(FF)V

    .line 515
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$incrementPerMs:F

    mul-float/2addr v4, v0

    iput v4, v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->_dy:F

    .line 517
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->val$durationMs:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->mIsTranslateFinish:Z

    goto :goto_0
.end method
