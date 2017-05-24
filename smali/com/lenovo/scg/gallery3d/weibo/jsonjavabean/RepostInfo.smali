.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;
.super Ljava/lang/Object;
.source "RepostInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5346601d7daa2d0dL


# instance fields
.field private attitudes_count:I

.field private comments_count:I

.field private created_at:Ljava/lang/String;

.field private favorited:Z

.field private id:J

.field private idstr:Ljava/lang/String;

.field private mid:J

.field private reposts_count:I

.field private retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private truncated:Z

.field private user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttitudes_count()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->attitudes_count:I

    return v0
.end method

.method public getComments_count()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->comments_count:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->id:J

    return-wide v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->mid:J

    return-wide v0
.end method

.method public getReposts_count()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->reposts_count:I

    return v0
.end method

.method public getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->truncated:Z

    return v0
.end method

.method public setAttitudes_count(I)V
    .locals 0
    .param p1, "attitudes_count"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->attitudes_count:I

    .line 147
    return-void
.end method

.method public setComments_count(I)V
    .locals 0
    .param p1, "comments_count"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->comments_count:I

    .line 139
    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->created_at:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0
    .param p1, "favorited"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->favorited:Z

    .line 99
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->id:J

    .line 59
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->idstr:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMid(J)V
    .locals 1
    .param p1, "mid"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->mid:J

    .line 67
    return-void
.end method

.method public setReposts_count(I)V
    .locals 0
    .param p1, "reposts_count"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->reposts_count:I

    .line 131
    return-void
.end method

.method public setRetweeted_status(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;)V
    .locals 0
    .param p1, "retweeted_status"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;

    .line 123
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->source:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->text:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "truncated"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->truncated:Z

    .line 107
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 115
    return-void
.end method
