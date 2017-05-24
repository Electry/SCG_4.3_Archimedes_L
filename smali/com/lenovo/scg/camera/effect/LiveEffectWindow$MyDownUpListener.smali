.class Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;
.super Ljava/lang/Object;
.source "LiveEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1426
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1432
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1433
    .local v1, "y":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1702(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1434
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1800(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1436
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1437
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1441
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1443
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1444
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1448
    :cond_1
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyDownUpListener  onUp x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-void
.end method
