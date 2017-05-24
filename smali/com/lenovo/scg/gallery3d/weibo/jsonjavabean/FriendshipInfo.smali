.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;
.super Ljava/lang/Object;
.source "FriendshipInfo.java"


# instance fields
.field private followed_by:Z

.field private following:Z

.field private id:J

.field private notifications_enabled:Z

.field private screen_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->id:J

    return-wide v0
.end method

.method public getIsFollowedBy()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->followed_by:Z

    return v0
.end method

.method public getIsFollowing()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->following:Z

    return v0
.end method

.method public getNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->notifications_enabled:Z

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->id:J

    .line 17
    return-void
.end method

.method public setIsFollowedBy(Z)V
    .locals 0
    .param p1, "followed_by"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->followed_by:Z

    .line 33
    return-void
.end method

.method public setIsFollowing(Z)V
    .locals 0
    .param p1, "following"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->following:Z

    .line 41
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 0
    .param p1, "notifications_enabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->notifications_enabled:Z

    .line 49
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen_name"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/FriendshipInfo;->screen_name:Ljava/lang/String;

    .line 25
    return-void
.end method
