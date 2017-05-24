.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"


# instance fields
.field private created_at:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private idstr:Ljava/lang/String;

.field private like_count:I

.field private member_count:I

.field private mode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profile_image_url:Ljava/lang/String;

.field private tags:[Ljava/lang/String;

.field private user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

.field private visible:I


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
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_count()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->like_count:I

    return v0
.end method

.method public getMember_count()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->member_count:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->profile_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public getVisible()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->visible:I

    return v0
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->created_at:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->description:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->id:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->idstr:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setLike_count(I)V
    .locals 0
    .param p1, "like_count"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->like_count:I

    .line 92
    return-void
.end method

.method public setMember_count(I)V
    .locals 0
    .param p1, "member_count"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->member_count:I

    .line 100
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->mode:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->name:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setProfile_image_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "profile_image_url"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->profile_image_url:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTag([Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->tags:[Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 52
    return-void
.end method

.method public setVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->visible:I

    .line 76
    return-void
.end method
