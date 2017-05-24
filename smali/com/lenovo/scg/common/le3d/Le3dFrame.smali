.class public Lcom/lenovo/scg/common/le3d/Le3dFrame;
.super Ljava/lang/Object;
.source "Le3dFrame.java"


# static fields
.field public static final HIDE_SURFACE_VIEW:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

.field private mObject:Ljava/lang/Object;

.field private mOrientation:I

.field private mParentView:Landroid/widget/FrameLayout;

.field private mWindowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parentView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v4, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    .line 40
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewFactory;->create(Landroid/content/Context;I)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 2
    .param p1, "windowType"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mWindowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)Z

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->requestRender()V

    .line 78
    :cond_2
    return-void
.end method

.method public createWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;IZ)V
    .locals 3
    .param p1, "windowType"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;
    .param p3, "orientation"    # I
    .param p4, "isAnim"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mWindowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)Z

    move-result v0

    .line 95
    .local v0, "isCreateNewWindow":Z
    if-eqz v0, :cond_2

    .line 105
    .end local v0    # "isCreateNewWindow":Z
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local v0    # "isCreateNewWindow":Z
    :cond_2
    if-eqz p4, :cond_3

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->requestRender()V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v1, p1, p3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->show(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;I)V

    goto :goto_1
.end method

.method public destroyWindow()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "tyl"

    const-string v1, "destroy window in Le3dFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mWindowType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->destoryLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 153
    :cond_0
    return-void
.end method

.method public destroyWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->destoryLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 146
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hideLe3dGLSurfaceView()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 1
    .param p1, "windowType"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->hide(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 111
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onBackPressed()V

    .line 126
    :cond_0
    return-void
.end method

.method public onKeyCodeVolumeClick()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onKeyCodeVolumeClick()V

    .line 220
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mOrientation:I

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->onOrientationChanged(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public restoreFrameSize()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_0
    return-void
.end method

.method public restoreGLBackgroundColor()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "restoreGLBackgroundColorin Le3dFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->restoreGLBackgroundColor()V

    .line 209
    :cond_0
    return-void
.end method

.method public setFrameSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mParentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setGLBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "setGLBackgroundColor in Le3dFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dFrame;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;->setGLBackgroundColor(I)V

    .line 195
    :cond_0
    return-void
.end method
