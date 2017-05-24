.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;
.super Ljava/lang/Object;
.source "RetweetedStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62f24773c62346e7L


# instance fields
.field private bmiddle_pic:Ljava/lang/String;

.field private comments_count:I

.field private created_at:Ljava/lang/String;

.field private favorited:Z

.field private geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

.field private id:J

.field private idstr:Ljava/lang/String;

.field private in_reply_to_screen_name:Ljava/lang/String;

.field private in_reply_to_status_id:Ljava/lang/String;

.field private in_reply_to_user_id:Ljava/lang/String;

.field private melvel:I

.field private mid:Ljava/lang/String;

.field private original_pic:Ljava/lang/String;

.field private pic_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private reposts_count:I

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private thumbnail_pic:Ljava/lang/String;

.field private truncated:Z

.field private user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

.field private visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBmiddle_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->bmiddle_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getComments_count()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->comments_count:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->id:J

    return-wide v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_screen_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_status_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_status_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMelvel()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->melvel:I

    return v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->original_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_urls()Ljava/util/List;
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
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->pic_urls:Ljava/util/List;

    return-object v0
.end method

.method public getReposts_count()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->reposts_count:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->thumbnail_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public getVisible()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->truncated:Z

    return v0
.end method

.method public setBmiddle_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bmiddle_pic"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->bmiddle_pic:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setComments_count(I)V
    .locals 0
    .param p1, "comments_count"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->comments_count:I

    .line 163
    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->created_at:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0
    .param p1, "favorited"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->favorited:Z

    .line 99
    return-void
.end method

.method public setGeo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;)V
    .locals 0
    .param p1, "geo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .line 139
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->id:J

    .line 75
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->idstr:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setIn_reply_to_screen_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_screen_name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_screen_name:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setIn_reply_to_status_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_status_id"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_status_id:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setIn_reply_to_user_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_user_id"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->in_reply_to_user_id:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setMelvel(I)V
    .locals 0
    .param p1, "melvel"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->melvel:I

    .line 179
    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->mid:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setOriginal_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "original_pic"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->original_pic:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setPic_urls(Ljava/util/List;)V
    .locals 0
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
    .line 226
    .local p1, "pic_urls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->pic_urls:Ljava/util/List;

    .line 227
    return-void
.end method

.method public setReposts_count(I)V
    .locals 0
    .param p1, "reposts_count"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->reposts_count:I

    .line 155
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->source:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->text:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setThumbnail_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail_pic"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->thumbnail_pic:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "truncated"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->truncated:Z

    .line 107
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 195
    return-void
.end method

.method public setVisible(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;)V
    .locals 0
    .param p1, "visible"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .line 187
    return-void
.end method
