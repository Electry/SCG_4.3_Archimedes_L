.class public Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x43ca663582b9f5f3L


# instance fields
.field private DEFAULT_PIC_MOD:I

.field private isSingleImg:Z

.field private mArrPic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAttitudesCount:I

.field private mCid:J

.field private mCommentsCount:I

.field private mDescription:Ljava/lang/String;

.field private mFollowers:I

.field private mFriends:I

.field private mIsTweeted:Z

.field private mLabel:Ljava/lang/String;

.field private mMonth:Ljava/lang/String;

.field private mPicURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;"
        }
    .end annotation
.end field

.field private mRepostsCount:I

.field private mRetweetedStatusUid:J

.field private mRetweetedUserUid:J

.field private mSource:Ljava/lang/String;

.field private mStatus:I

.field private mStatusesIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStrContent:Ljava/lang/String;

.field private mStrContentId:J

.field private mStrCreatedTime:Ljava/lang/String;

.field private mStrHeadUri:Ljava/lang/String;

.field private mStrName:Ljava/lang/String;

.field private mStrPicMid:Ljava/lang/String;

.field private mStrPicOriginal:Ljava/lang/String;

.field private mStrPicThumbnail:Ljava/lang/String;

.field private mStrPicThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrRetweetedTime:Ljava/lang/String;

.field private mStrScreenName:Ljava/lang/String;

.field private mStrUserId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mPicURLs:Ljava/util/List;

    .line 63
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->DEFAULT_PIC_MOD:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    .line 86
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrName:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mIsTweeted:Z

    .line 89
    return-void
.end method


# virtual methods
.method public addmStatusesId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public addmStrPicThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "strPicThumbnail"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public getCid()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mCid:J

    return-wide v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mCommentsCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrCreatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDEFAULT_PIC_MOD()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->DEFAULT_PIC_MOD:I

    return v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mFollowers:I

    return v0
.end method

.method public getFriends()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mFriends:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    .line 181
    :goto_0
    return-object v1

    .line 167
    :cond_0
    const-string/jumbo v1, "none"

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "arrData":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 175
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    .line 181
    .end local v0    # "arrData":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    return-object v0
.end method

.method public getPicNumber()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPicTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mIsTweeted:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrRetweetedTime:Ljava/lang/String;

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrCreatedTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRepostsCount()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRepostsCount:I

    return v0
.end method

.method public getRetweetedStatusUid()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRetweetedStatusUid:J

    return-wide v0
.end method

.method public getRetweetedUserUid()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRetweetedUserUid:J

    return-wide v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatus:I

    return v0
.end method

.method public getStatusesId()J
    .locals 2

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContentId:J

    return-wide v0
.end method

.method public getUserDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrUserId:J

    return-wide v0
.end method

.method public getmAttitudesCount()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mAttitudesCount:I

    return v0
.end method

.method public getmPicURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mPicURLs:Ljava/util/List;

    return-object v0
.end method

.method public getmStatusesIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmStatusesIdsSize()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatusesIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getmStrContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrCreatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrCreatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrHeadUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrHeadUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrName:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrPicMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicMid:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrPicOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrPicThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrPicThumbnails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmStrPicThumbnailsSize()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getmStrRetweetedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrRetweetedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getmStrUserId()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrUserId:J

    return-wide v0
.end method

.method public isSingleImg()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 98
    :cond_0
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    .line 103
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    goto :goto_0
.end method

.method public ismIsTweeted()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mIsTweeted:Z

    return v0
.end method

.method public setCid(J)V
    .locals 1
    .param p1, "cid"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mCid:J

    .line 198
    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0
    .param p1, "commentsCount"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mCommentsCount:I

    .line 460
    return-void
.end method

.method public setDEFAULT_PIC_MOD(I)V
    .locals 0
    .param p1, "dEFAULT_PIC_MOD"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->DEFAULT_PIC_MOD:I

    .line 78
    return-void
.end method

.method public setFollowers(I)V
    .locals 0
    .param p1, "mFollowers"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mFollowers:I

    .line 468
    return-void
.end method

.method public setFriends(I)V
    .locals 0
    .param p1, "mFriends"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mFriends:I

    .line 476
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mMonth:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPicList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    const/4 v3, 0x1

    .line 551
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    .line 553
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    if-nez v2, :cond_0

    .line 569
    :goto_0
    return-void

    .line 557
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mPicURLs:Ljava/util/List;

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 559
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;-><init>()V

    .line 560
    .local v1, "mPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->setAllURLFromThumbNailUrl(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mPicURLs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    .end local v1    # "mPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mArrPic:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 565
    :cond_2
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    goto :goto_0

    .line 567
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    goto :goto_0
.end method

.method public setRepostsCount(I)V
    .locals 0
    .param p1, "repostsCount"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRepostsCount:I

    .line 452
    return-void
.end method

.method public setRetweetedStatusUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRetweetedStatusUid:J

    .line 206
    return-void
.end method

.method public setRetweetedUserUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mRetweetedUserUid:J

    .line 214
    return-void
.end method

.method public setSingleImg(Z)V
    .locals 0
    .param p1, "isSingleImg"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg:Z

    .line 110
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mSource:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "mStatus"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStatus:I

    .line 484
    return-void
.end method

.method public setStatusesId(J)V
    .locals 1
    .param p1, "statusesId"    # J

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContentId:J

    .line 412
    return-void
.end method

.method public setUserDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mDescription:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setmAttitudesCount(I)V
    .locals 0
    .param p1, "mAttitudesCount"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mAttitudesCount:I

    .line 194
    return-void
.end method

.method public setmIsTweeted(Z)V
    .locals 0
    .param p1, "mIsTweeted"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mIsTweeted:Z

    .line 540
    return-void
.end method

.method public setmPicURLs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "mPicURLs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mPicURLs:Ljava/util/List;

    .line 141
    return-void
.end method

.method public setmStrContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrContent"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrContent:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setmStrCreatedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrCreatedTime"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrCreatedTime:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setmStrHeadUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrHeadUri"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrHeadUri:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setmStrName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrName"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrName:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setmStrPicMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrPicMid"    # Ljava/lang/String;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicMid:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setmStrPicOriginal(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrPicOriginal"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicOriginal:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setmStrPicThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrPicThumbnail"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrPicThumbnail:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setmStrRetweetedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrRetweetedTime"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrRetweetedTime:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setmStrScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStrScreenName"    # Ljava/lang/String;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrScreenName:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setmStrUserId(J)V
    .locals 1
    .param p1, "mStrUserId"    # J

    .prologue
    .line 491
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->mStrUserId:J

    .line 492
    return-void
.end method
