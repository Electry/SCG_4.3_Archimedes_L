.class public abstract Lcom/lenovo/scg/common/le3d/Le3dWindow;
.super Ljava/lang/Object;
.source "Le3dWindow.java"


# instance fields
.field protected mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

.field protected mG3dAnimationManager:Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

.field protected mIsAnimationing:Z

.field protected mIsFirstInit:Z

.field protected mIsVisible:Z

.field protected mLastMoveX:F

.field protected mLastMoveY:F

.field protected mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

.field protected mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

.field protected mObject:Ljava/lang/Object;

.field protected mOrientation:I

.field protected mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

.field protected mWindowMode:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 2
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    invoke-direct {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mG3dAnimationManager:Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 33
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 34
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->initViews()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;II)V
    .locals 1
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "orientation"    # I
    .param p3, "windowMode"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;IILcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;IILcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V
    .locals 3
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "orientation"    # I
    .param p3, "windowMode"    # I
    .param p4, "controllerProxy"    # Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    invoke-direct {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mG3dAnimationManager:Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    .line 29
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 43
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsFirstInit:Z

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 46
    invoke-virtual {p0, p4}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->setLe3dControllerProxy(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V

    .line 47
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mOrientation:I

    .line 48
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mWindowMode:I

    .line 49
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setSize(FF)V

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->initViews()V

    .line 53
    return-void
.end method


# virtual methods
.method protected addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mG3dAnimationManager:Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->add(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->requestRender()V

    goto :goto_0
.end method

.method protected addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 85
    return-void
.end method

.method public callback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
    .locals 0
    .param p1, "callbackData"    # Lcom/lenovo/scg/common/le3d/Le3dCallbackData;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onCallback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V

    .line 188
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->requestRender()V

    .line 189
    return-void
.end method

.method public abstract destroy()V
.end method

.method public draw()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "tyl"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->update()V

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mG3dAnimationManager:Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->calculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    .line 68
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->requestRender()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->draw()V

    .line 72
    return-void
.end method

.method public abstract entry()V
.end method

.method public abstract exit()V
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getRootView()Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method public getViewFromId(I)Lcom/lenovo/scg/common/le3d/Le3dView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->getViewFromId(Lcom/lenovo/scg/common/le3d/Le3dContainer;I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    return-object v0
.end method

.method public getViewFromId(Lcom/lenovo/scg/common/le3d/Le3dContainer;I)Lcom/lenovo/scg/common/le3d/Le3dView;
    .locals 3
    .param p1, "container"    # Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .param p2, "id"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 119
    .local v1, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 127
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    :goto_1
    return-object v1

    .line 121
    .restart local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    instance-of v2, v1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v2, :cond_2

    .line 122
    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {p0, v1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->getViewFromId(Lcom/lenovo/scg/common/le3d/Le3dContainer;I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v1

    .restart local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-nez v1, :cond_0

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 156
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onHide()V

    .line 157
    return-void
.end method

.method public hideLe3dGLSrufaceView()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;->hideSurfaceView()V

    .line 176
    return-void
.end method

.method public abstract initViews()V
.end method

.method public isAnimationing()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsAnimationing:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    return v0
.end method

.method public abstract layoutContentPane()V
.end method

.method public abstract onBackPressed()V
.end method

.method protected abstract onCallback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
.end method

.method public onFling(IFF)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 105
    return-void
.end method

.method public abstract onHide()V
.end method

.method public onMove(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 102
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mOrientation:I

    .line 170
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->layoutContentPane()V

    .line 172
    :cond_0
    return-void
.end method

.method public onPressDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 88
    return-void
.end method

.method public onPressUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLastMoveX:F

    .line 93
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLastMoveY:F

    .line 95
    return-void
.end method

.method public onScroll(FF)V
    .locals 0
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 109
    return-void
.end method

.method public onSingleTapUp(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 99
    return-void
.end method

.method public requestDelayExit()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;->requestDelayHide()V

    .line 184
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->requestRender()V

    .line 193
    return-void
.end method

.method public setLe3dControllerProxy(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V
    .locals 0
    .param p1, "controllerProxy"    # Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    .line 57
    return-void
.end method

.method public setLe3dGLSurfaceView(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;)V
    .locals 0
    .param p1, "glSurfaceView"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    .line 61
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->layoutContentPane()V

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 164
    return-void
.end method
