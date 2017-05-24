.class Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;
.super Ljava/lang/Object;
.source "SpecialEffectWindow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 985
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 986
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

    .line 987
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->clickInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # setter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z
    invoke-static {v2, v5}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$602(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Z)Z

    .line 992
    :cond_0
    return v5
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1090
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

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1092
    const/4 v1, 0x1

    .line 1119
    :goto_0
    return v1

    .line 1094
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1095
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)F

    move-result v2

    sub-float v11, v1, v2

    .line 1097
    .local v11, "currX":F
    const/4 v15, 0x0

    .line 1098
    .local v15, "minY":F
    const/4 v13, 0x0

    .line 1099
    .local v13, "maxY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertRectToRectMargin:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v14, v1

    .line 1100
    .local v14, "minX":F
    const/4 v12, 0x0

    .line 1101
    .local v12, "maxX":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-nez v1, :cond_1

    .line 1102
    const/4 v1, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    float-to-int v2, v11

    const/4 v3, 0x0

    move/from16 v0, p3

    float-to-int v4, v0

    const/4 v5, 0x0

    float-to-int v6, v14

    float-to-int v7, v12

    float-to-int v8, v15

    float-to-int v9, v13

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v10}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->fling(IIIIIIIII)V

    .line 1119
    .end local v11    # "currX":F
    .end local v12    # "maxX":F
    .end local v13    # "maxY":F
    .end local v14    # "minX":F
    .end local v15    # "minY":F
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1106
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)F

    move-result v2

    sub-float v11, v1, v2

    .line 1107
    .restart local v11    # "currX":F
    const/4 v15, 0x0

    .line 1108
    .restart local v15    # "minY":F
    const/4 v13, 0x0

    .line 1109
    .restart local v13    # "maxY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorRectToRectMargin:F
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v14, v1

    .line 1110
    .restart local v14    # "minX":F
    const/4 v12, 0x0

    .line 1111
    .restart local v12    # "maxX":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-nez v1, :cond_4

    .line 1112
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1114
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    float-to-int v2, v11

    const/4 v3, 0x0

    move/from16 v0, p3

    float-to-int v4, v0

    const/4 v5, 0x0

    float-to-int v6, v14

    float-to-int v7, v12

    float-to-int v8, v15

    float-to-int v9, v13

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v10}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v10

    invoke-virtual/range {v1 .. v10}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->fling(IIIIIIIII)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 999
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1000
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

    .line 1002
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

    .line 1007
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

    .line 1008
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    neg-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->onMove(FF)V

    .line 1012
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # invokes: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v0

    sub-float v0, v2, v0

    # setter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$802(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;F)F

    .line 1013
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1000(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScroll mRecordCurrentMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$800(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getLastCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v0, 0x1

    .line 1017
    :goto_0
    return v0

    .line 1016
    :cond_1
    const-string/jumbo v1, "tyl"

    const-string/jumbo v2, "onScroll failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1026
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1027
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

    .line 1029
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 1034
    const-string/jumbo v6, "tyl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSingleTapUp x= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1036
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1038
    .local v5, "y":F
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1039
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 1040
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    .line 1041
    .local v1, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v1, :cond_0

    .line 1042
    invoke-virtual {v1, v4, v5}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->clickInRect(FF)Z

    move-result v0

    .line 1043
    .local v0, "IsClick":Z
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1044
    const-string/jumbo v6, "tyl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSingleTapUp child id== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "child.getEventListener() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/lenovo/scg/camera/effect/EventListener;->onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 1039
    .end local v0    # "IsClick":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1052
    .end local v1    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .end local v2    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->clickInRect(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1053
    const-string/jumbo v6, "tyl"

    const-string v7, "mPointView.clickInRect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v3

    .line 1055
    .local v3, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getCenterY()F

    move-result v6

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 1056
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # invokes: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEnableSelEffect(Z)V
    invoke-static {v6, v9}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Z)V

    .line 1057
    const-string/jumbo v6, "tyl"

    const-string v7, "mPointView.clickInRect up !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startHidePointsAnim(I)V

    .line 1059
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->startEffectHideAnimation()V

    .line 1061
    const-string/jumbo v6, "tyl"

    const-string/jumbo v7, "onSingleTapUp  buttons"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setViewSize(FF)V

    .line 1063
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v6

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_3

    .line 1065
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterX:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    .line 1084
    .end local v3    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_2
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 1068
    .restart local v3    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterX:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1800(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    goto :goto_1

    .line 1071
    :cond_4
    const-string/jumbo v6, "tyl"

    const-string v7, "mPointView.clickInRect down !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->startMergePointsAnim(I)V

    .line 1074
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setViewSize(FF)V

    .line 1075
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v6

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_5

    .line 1076
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterX:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2000(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    goto :goto_1

    .line 1080
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;
    invoke-static {v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterX:F
    invoke-static {v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$2200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    goto :goto_1
.end method
