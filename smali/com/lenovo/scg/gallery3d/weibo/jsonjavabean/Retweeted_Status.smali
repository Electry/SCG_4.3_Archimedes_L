.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;
.super Ljava/lang/Object;
.source "Retweeted_Status.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8cc6061ea676b5bL


# instance fields
.field private attitudes_count:I

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

.field private mid:J

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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttitudes_count()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->attitudes_count:I

    return v0
.end method

.method public getBmiddle_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->bmiddle_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getComments_count()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->comments_count:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getGeos()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->id:J

    return-wide v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_screen_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_status_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_status_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMelvel()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->melvel:I

    return v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->mid:J

    return-wide v0
.end method

.method public getOriginal_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->original_pic:Ljava/lang/String;

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
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->pic_urls:Ljava/util/List;

    return-object v0
.end method

.method public getReposts_count()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->reposts_count:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->thumbnail_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public getVisible()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->truncated:Z

    return v0
.end method

.method public setAttitudes_count(I)V
    .locals 0
    .param p1, "attitudes_count"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->attitudes_count:I

    .line 212
    return-void
.end method

.method public setBmiddle_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bmiddle_pic"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->bmiddle_pic:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setComments_count(I)V
    .locals 0
    .param p1, "comments_count"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->comments_count:I

    .line 204
    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->created_at:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0
    .param p1, "favorited"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->favorited:Z

    .line 108
    return-void
.end method

.method public setGeos(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;)V
    .locals 0
    .param p1, "geo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .line 180
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->id:J

    .line 68
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->idstr:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setIn_reply_to_screen_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_screen_name"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_screen_name:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setIn_reply_to_status_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_status_id"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_status_id:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setIn_reply_to_user_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_user_id"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->in_reply_to_user_id:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setMelvel(I)V
    .locals 0
    .param p1, "melvel"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->melvel:I

    .line 220
    return-void
.end method

.method public setMid(J)V
    .locals 1
    .param p1, "mid"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->mid:J

    .line 76
    return-void
.end method

.method public setOriginal_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "original_pic"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->original_pic:Ljava/lang/String;

    .line 172
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
    .line 147
    .local p1, "pic_urls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->pic_urls:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setReposts_count(I)V
    .locals 0
    .param p1, "reposts_count"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->reposts_count:I

    .line 196
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->source:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->text:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setThumbnail_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail_pic"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->thumbnail_pic:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "truncated"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->truncated:Z

    .line 116
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 188
    return-void
.end method

.method public setVisible(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;)V
    .locals 0
    .param p1, "visible"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/Retweeted_Status;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .line 228
    return-void
.end method
