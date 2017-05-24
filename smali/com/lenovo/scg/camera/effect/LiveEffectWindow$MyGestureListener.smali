.class Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;
.super Ljava/lang/Object;
.source "LiveEffectWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1255
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1256
    .local v1, "y":F
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDown x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_3

    .line 1258
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1600(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1702(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1268
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1270
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1271
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1275
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1276
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1277
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1278
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1281
    :cond_2
    return v5

    .line 1262
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1263
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1702(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1386
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1388
    const/4 v1, 0x1

    .line 1417
    :goto_0
    return v1

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1391
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 1392
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    sub-float v10, v1, v2

    .line 1393
    .local v10, "currX":F
    const/4 v14, 0x0

    .line 1394
    .local v14, "minY":F
    const/4 v12, 0x0

    .line 1395
    .local v12, "maxY":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v2, 0x7f0902be

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v4, 0x7f0902c0

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v3, 0x7f0902b5

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v13, v1

    .line 1397
    .local v13, "minX":F
    const/4 v11, 0x0

    .line 1398
    .local v11, "maxX":F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-nez v1, :cond_1

    .line 1399
    const/4 v1, 0x1

    goto :goto_0

    .line 1401
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    float-to-int v2, v10

    const/4 v3, 0x0

    move/from16 v0, p3

    float-to-int v4, v0

    const/4 v5, 0x0

    float-to-int v6, v13

    float-to-int v7, v11

    float-to-int v8, v14

    float-to-int v9, v12

    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->fling(IIIIIIII)V

    .line 1417
    .end local v10    # "currX":F
    .end local v11    # "maxX":F
    .end local v12    # "maxY":F
    .end local v13    # "minX":F
    .end local v14    # "minY":F
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1403
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    sub-float v10, v1, v2

    .line 1404
    .restart local v10    # "currX":F
    const/4 v14, 0x0

    .line 1405
    .restart local v14    # "minY":F
    const/4 v12, 0x0

    .line 1406
    .restart local v12    # "maxY":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v2, 0x7f0902be

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v4, 0x7f0902c0

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v3, 0x7f0902af

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v13, v1

    .line 1408
    .restart local v13    # "minX":F
    const/4 v11, 0x0

    .line 1409
    .restart local v11    # "maxX":F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-nez v1, :cond_4

    .line 1410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1412
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    float-to-int v2, v10

    const/4 v3, 0x0

    move/from16 v0, p3

    float-to-int v4, v0

    const/4 v5, 0x0

    float-to-int v6, v13

    float-to-int v7, v11

    float-to-int v8, v14

    float-to-int v9, v12

    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1288
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1289
    .local v1, "y":F
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLongPress x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1291
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1293
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1297
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1298
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1299
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1300
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1303
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    .line 1308
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScroll dx= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v1

    neg-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->onMove(FF)V

    .line 1315
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2102(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;F)F

    .line 1317
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScroll mRecordCurrentMoveX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "firstEffectX ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v0, 0x1

    .line 1321
    :goto_0
    return v0

    .line 1320
    :cond_1
    const-string/jumbo v1, "tyl"

    const-string/jumbo v2, "onScroll failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1330
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1331
    .local v1, "y":F
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShowPress x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1335
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1339
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1340
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1341
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1342
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1345
    :cond_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 1350
    const-string/jumbo v5, "tyl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSingleTapUp x= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1352
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1353
    .local v4, "y":F
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1354
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1355
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z
    invoke-static {v5, v8}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1356
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1360
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1361
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->clickInRect(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1362
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z
    invoke-static {v5, v8}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z

    .line 1363
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lenovo/scg/camera/effect/EventListener;->onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1367
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    .line 1369
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    .line 1370
    .local v1, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v1, :cond_2

    .line 1371
    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->clickInRect(FF)Z

    move-result v0

    .line 1372
    .local v0, "IsClick":Z
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1373
    const-string/jumbo v5, "tyl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSingleTapUp child id== "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child.getEventListener() ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/lenovo/scg/camera/effect/EventListener;->onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1368
    .end local v0    # "IsClick":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1380
    .end local v1    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x1

    return v5
.end method
