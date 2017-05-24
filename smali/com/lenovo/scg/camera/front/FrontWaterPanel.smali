.class public Lcom/lenovo/scg/camera/front/FrontWaterPanel;
.super Landroid/widget/LinearLayout;
.source "FrontWaterPanel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final GESTURE_V:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "FrontWaterPanel"

.field private static final WATER_PANEL_MAX_COUNT:I = 0x5


# instance fields
.field private mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIndex:I

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    .line 67
    return-void
.end method

.method private changeWaterPanel()V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->exitWaterPanel()V

    .line 195
    invoke-static {}, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->values()[Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    move-result-object v1

    .line 196
    .local v1, "waters":[Lcom/lenovo/scg/camera/water/WaterFactory$WATER;
    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    aget-object v0, v1, v2

    .line 197
    .local v0, "water":Lcom/lenovo/scg/camera/water/WaterFactory$WATER;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/water/WaterFactory;->createWaterPanel(Lcom/lenovo/scg/camera/water/WaterFactory$WATER;Ljava/lang/Object;)Lcom/lenovo/scg/camera/water/WaterPanel;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    .line 199
    const-string v2, "FrontWaterPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "water = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWaterPanel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "FrontWaterPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeWaterPanel, mController = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/water/WaterPanel;->setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    .line 202
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/water/WaterPanel;->setParentView(Landroid/view/ViewGroup;)V

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/water/WaterPanel;->enterWaterPanel()V

    .line 207
    return-void
.end method


# virtual methods
.method public drawWater(Landroid/graphics/Canvas;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/water/WaterPanel;->drawWater(Landroid/graphics/Canvas;I)V

    .line 219
    return-void
.end method

.method public exitWaterPanel()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "FrontWaterPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterPanel != null, exitWaterPanel!! mWaterPanel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/water/WaterPanel;->exitWaterPanel()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    .line 215
    :cond_0
    return-void
.end method

.method public getWaterDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mWaterPanel:Lcom/lenovo/scg/camera/water/WaterPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/water/WaterPanel;->getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 86
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->changeWaterPanel()V

    .line 87
    return-void
.end method

.method public onCaptureEnd()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->exitWaterPanel()V

    .line 94
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 80
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showNext()V

    .line 157
    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    if-ge v2, v4, :cond_0

    .line 158
    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    .line 161
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    if-ne v2, v4, :cond_1

    .line 162
    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    .line 165
    :cond_1
    const-string v1, "FrontWaterPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling, mIndex++ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->changeWaterPanel()V

    .line 187
    :goto_0
    return v0

    .line 171
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, -0x3d900000    # -60.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 174
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    if-lez v1, :cond_4

    .line 175
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    .line 180
    :cond_3
    :goto_1
    const-string v1, "FrontWaterPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling, mIndex-- = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->changeWaterPanel()V

    goto :goto_0

    .line 176
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    if-nez v1, :cond_3

    .line 177
    const/4 v1, 0x4

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mIndex:I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 109
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method
