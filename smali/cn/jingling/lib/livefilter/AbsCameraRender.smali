.class public abstract Lcn/jingling/lib/livefilter/AbsCameraRender;
.super Ljava/lang/Object;
.source "AbsCameraRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcn/jingling/lib/livefilter/CameraRenderInteface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

.field protected mFilterUpdate:Z

.field protected mFpsCount:I

.field protected mFpsTime:J

.field protected mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

.field protected mLastLable:Ljava/lang/String;

.field protected mLiveFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/jingling/lib/livefilter/LiveFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mMutex:Ljava/lang/Object;

.field protected mNeedUpdateViewPort:Z

.field protected mOnFpsListener:Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

.field protected mPreviewImageHeight:I

.field protected mPreviewImageWidth:I

.field private mTaskFinished:Z

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mUpdateLabel:Ljava/lang/String;

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mViewportRect:Lcn/jingling/lib/livefilter/ViewportRect;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFpsCount:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFpsTime:J

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mMutex:Ljava/lang/Object;

    .line 24
    iput-boolean v3, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mTaskFinished:Z

    .line 30
    iput-boolean v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFilterUpdate:Z

    .line 40
    iput-boolean v3, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mNeedUpdateViewPort:Z

    .line 41
    sget-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 11
    return-void
.end method

.method private _updateLable(Ljava/lang/String;)V
    .locals 6
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 118
    .local v0, "liveFilterInfo":Lcn/jingling/lib/livefilter/LiveFilterInfo;
    iget-object v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mAppContext:Landroid/content/Context;

    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mPreviewImageWidth:I

    .line 119
    iget v5, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mPreviewImageHeight:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 118
    invoke-virtual {v0, v2, v3}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 120
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mUpdateLabel:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLastLable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 124
    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLastLable:Ljava/lang/String;

    .line 125
    .local v1, "tempLable":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLastLable:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->_updateLable(Ljava/lang/String;)V

    .line 131
    .end local v1    # "tempLable":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/AbsCameraRender;->refresh()V

    .line 132
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/livefilter/AbsCameraRender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->_updateLable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/livefilter/AbsCameraRender;Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mTaskFinished:Z

    return-void
.end method


# virtual methods
.method public getFilterInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    return-object v0
.end method

.method protected glUpdateFilter()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glRelease()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLiveFilters:Ljava/util/Map;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mUpdateLabel:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    .line 139
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mPreviewImageWidth:I

    .line 140
    iget v4, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mPreviewImageHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 139
    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 141
    return-void
.end method

.method protected markTime()V
    .locals 8

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    .local v2, "t":J
    iget-wide v4, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFpsTime:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v0, v4, v6

    .line 154
    .local v0, "interval":D
    iget-object v4, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mOnFpsListener:Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mOnFpsListener:Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v0

    double-to-int v5, v6

    invoke-interface {v4, v5}, Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;->onFpsUpdate(I)V

    .line 157
    :cond_0
    iput-wide v2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFpsTime:J

    .line 158
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFilterUpdate:Z

    .line 44
    monitor-exit v1

    .line 47
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filter label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    const-string v2, " does not exsit in LiveFilterInfo!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mUpdateLabel:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mFilterUpdate:Z

    .line 70
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFilterAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mCurrentLiveFilter:Lcn/jingling/lib/livefilter/LiveFilterInfo;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveFilterInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLiveFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filter label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string v2, " does not exsit in LiveFilterInfo!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mLastLable:Ljava/lang/String;

    .line 93
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mTaskFinished:Z

    if-nez v0, :cond_2

    .line 95
    monitor-exit v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mTaskFinished:Z

    .line 99
    new-instance v0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;

    invoke-direct {v0, p0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender$1;-><init>(Lcn/jingling/lib/livefilter/AbsCameraRender;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 112
    invoke-virtual {v0, v2}, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mImageType:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mNeedUpdateViewPort:Z

    .line 55
    return-void
.end method

.method public setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V
    .locals 0
    .param p1, "l"    # Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender;->mOnFpsListener:Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    .line 145
    return-void
.end method
