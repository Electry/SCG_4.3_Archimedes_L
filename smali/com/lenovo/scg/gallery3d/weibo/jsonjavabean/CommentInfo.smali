.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;
.super Ljava/lang/Object;
.source "CommentInfo.java"


# instance fields
.field private created_at:Ljava/lang/String;

.field private id:J

.field private mid:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

.field private text:Ljava/lang/String;

.field private user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->id:J

    return-wide v0
.end method

.method public getMidstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->created_at:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->id:J

    .line 66
    return-void
.end method

.method public setMidstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->mid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->source:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStatus(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;)V
    .locals 0
    .param p1, "status"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->text:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 42
    return-void
.end method
