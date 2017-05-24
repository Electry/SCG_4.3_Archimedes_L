.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;
.super Ljava/lang/Object;
.source "MiniCameraPreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;
    }
.end annotation


# static fields
.field private static final MODE_ALL:I = 0x4

.field private static final MODE_MODULE:I = 0x1

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_ZOOM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiniCameraPreviewGestures"


# instance fields
.field private mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

.field private mCurrent:Landroid/view/MotionEvent;

.field private mDown:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mLocation:[I

.field private mMode:I

.field private mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mTapListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;

.field private mTapTimeout:I

.field private mUnclickableAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;)V
    .locals 1
    .param p1, "ctx"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .param p2, "zoom"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;
    .param p3, "tapListener"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    .line 62
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    .line 63
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 64
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mTapListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mEnabled:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    .line 68
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mTapTimeout:I

    .line 69
    return-void
.end method

.method private checkClickable(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 140
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 145
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkReceivers(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 111
    .local v1, "receiver":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "receiver":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "evt"    # Landroid/view/MotionEvent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xb4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, v5, :cond_0

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, v5, :cond_1

    .line 87
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v0

    .line 89
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mLocation:[I

    aget v3, v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 99
    .local v0, "c":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public addTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addUnclickableArea(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public cancelActivityTouchHandling(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    return-void
.end method

.method public clearTouchReceivers()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    :cond_0
    return-void
.end method

.method public clearUnclickableAreas()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    :cond_0
    return-void
.end method

.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 163
    const-string v2, "MiniCameraPreviewGestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouch, mEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mEnabled:Z

    if-nez v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 172
    const-string v0, "MiniCameraPreviewGestures"

    const-string v2, "dispatchTouch, MotionEvent.ACTION_DOWN!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->checkReceivers(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "MiniCameraPreviewGestures"

    const-string v2, "dispatchTouch, mMode = MODE_MODULE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "MiniCameraPreviewGestures"

    const-string v1, "dispatchTouch, mMode = MODE_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    .line 180
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mDown:Landroid/view/MotionEvent;

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 184
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    if-nez v2, :cond_3

    .line 185
    const-string v1, "MiniCameraPreviewGestures"

    const-string v2, "dispatchTouch, MODE_NONE!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 189
    const-string v2, "MiniCameraPreviewGestures"

    const-string v3, "dispatchTouch, MODE_ZOOM!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 192
    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_4
    move v0, v1

    .line 195
    goto :goto_0

    .line 196
    :cond_5
    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    if-ne v2, v1, :cond_6

    .line 197
    const-string v0, "MiniCameraPreviewGestures"

    const-string v1, "dispatchTouch, MODE_MODULE!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 201
    :cond_6
    const-string v2, "MiniCameraPreviewGestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouch, mMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mDown:Landroid/view/MotionEvent;

    if-nez v2, :cond_7

    move v0, v1

    .line 205
    goto/16 :goto_0

    .line 208
    :cond_7
    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 209
    const-string v2, "MiniCameraPreviewGestures"

    const-string v3, "dispatchTouch, MotionEvent.ACTION_POINTER_DOWN!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    if-eqz v2, :cond_8

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    .line 239
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v1, v0, :cond_a

    .line 240
    const-string v0, "MiniCameraPreviewGestures"

    const-string v2, "dispatchTouch, MotionEvent.ACTION_UP!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mTapTimeout:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 244
    const-string v0, "MiniCameraPreviewGestures"

    const-string v2, "dispatchTouch, time < tapTimeout, onSingleTapUp"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mTapListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getWindowPositionX()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getWindowPositionY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures$SingleTapListener;->onSingleTapUp(Landroid/view/View;II)V

    move v0, v1

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_9
    const-string v0, "MiniCameraPreviewGestures"

    const-string v1, "dispatchTouch, superDispatchTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 256
    :cond_a
    const-string v0, "MiniCameraPreviewGestures"

    const-string v1, "dispatchTouch, end, return superDispatchTouchEvent!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x2

    .line 269
    const-string/jumbo v0, "panhui"

    const-string/jumbo v1, "onScaleBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->getInstance()Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->creat()V

    .line 273
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    if-eq v0, v2, :cond_0

    .line 274
    iput v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mMode:I

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 286
    const-string/jumbo v0, "panhui"

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mZoom:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 290
    :cond_0
    return-void
.end method

.method public removeTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->clearTouchReceivers()V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->clearUnclickableAreas()V

    .line 106
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mEnabled:Z

    .line 77
    return-void
.end method

.method public setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraPreviewGestures;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .line 73
    return-void
.end method
