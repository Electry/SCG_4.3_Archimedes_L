.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
.super Ljava/lang/Object;
.source "ScrollBar.java"


# static fields
.field private static final HIDE_MESSAGE:I


# instance fields
.field private final HIDE:I

.field private final SHOW:I

.field private final WAITFORHIDE:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsPressed:Z

.field private mScrollHeight:I

.field private final mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mState:I

.field private mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mWidth:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p3, "scroller"    # Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x50

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWidth:I

    .line 45
    const/16 v0, 0x96

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHeight:I

    .line 49
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    .line 51
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->HIDE:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->WAITFORHIDE:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->SHOW:I

    .line 57
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    .line 63
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mYOffset:I

    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 68
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 69
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0208d5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 70
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    .line 71
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Lcom/lenovo/scg/gallery3d/ui/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    return-object v0
.end method

.method private getHeight()I
    .locals 2

    .prologue
    .line 132
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getWidth()I
    .locals 2

    .prologue
    .line 124
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getX()I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowWidth:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getY()I
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mYOffset:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getIsPressed()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    :cond_0
    return-void
.end method

.method public init(III)V
    .locals 0
    .param p1, "scrollHeight"    # I
    .param p2, "windowWidth"    # I
    .param p3, "windowHeight"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    .line 95
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowWidth:I

    .line 96
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    .line 97
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->show()V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->isShow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    if-ne v3, v1, :cond_2

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    neg-float v3, p4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 174
    .local v0, "distance":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int v0, v3, v4

    .line 175
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    invoke-virtual {v3, v0, v2, v4}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    goto :goto_0

    .end local v0    # "distance":I
    :cond_2
    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->show()V

    move v1, v2

    .line 181
    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v4

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 152
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 153
    .local v1, "y":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getX()I

    move-result v2

    if-gt v2, v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getX()I

    move-result v2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getY()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getY()I

    move-result v2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->show()V

    .line 156
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    goto :goto_0

    .line 158
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->isShow()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->hide()V

    .line 161
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mIsPressed:Z

    goto :goto_0
.end method

.method public paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getX()I

    move-result v2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getY()I

    move-result v3

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 112
    :cond_0
    return-void
.end method

.method public setScrollHeight(I)V
    .locals 0
    .param p1, "scrollHeight"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScrollHeight:I

    .line 101
    return-void
.end method

.method public setWindowHeight(II)V
    .locals 0
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowWidth:I

    .line 105
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mWindowHeight:I

    .line 106
    return-void
.end method

.method public setYOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mYOffset:I

    .line 213
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 197
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    if-eq v0, v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I

    .line 201
    :cond_0
    return-void
.end method
