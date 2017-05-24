.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;
.super Ljava/lang/Object;
.source "CountsInfo.java"


# instance fields
.field private followers_count:I

.field private friends_count:I

.field private id:J

.field private private_friends_count:I

.field private statuses_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowers_count()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->followers_count:I

    return v0
.end method

.method public getFriends_count()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->friends_count:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->id:J

    return-wide v0
.end method

.method public getStatuses_count()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->statuses_count:I

    return v0
.end method

.method public setFollowers_count(I)V
    .locals 0
    .param p1, "followers_count"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->followers_count:I

    .line 39
    return-void
.end method

.method public setFriends_count(I)V
    .locals 0
    .param p1, "friends_count"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->friends_count:I

    .line 47
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 30
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->id:J

    .line 31
    return-void
.end method

.method public setStatuses_count(I)V
    .locals 0
    .param p1, "statuses_count"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CountsInfo;->statuses_count:I

    .line 55
    return-void
.end method
