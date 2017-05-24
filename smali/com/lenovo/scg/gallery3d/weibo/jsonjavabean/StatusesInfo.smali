.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
.super Ljava/lang/Object;
.source "StatusesInfo.java"


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field private retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttitudes_count()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->attitudes_count:I

    return v0
.end method

.method public getBmiddle_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->bmiddle_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getComments_count()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->comments_count:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->id:J

    return-wide v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_screen_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_status_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_status_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMelvel()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->melvel:I

    return v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->original_pic:Ljava/lang/String;

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
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->pic_urls:Ljava/util/List;

    return-object v0
.end method

.method public getReposts_count()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->reposts_count:I

    return v0
.end method

.method public getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->thumbnail_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    return-object v0
.end method

.method public getVisible()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->truncated:Z

    return v0
.end method

.method public setAttitudes_count(I)V
    .locals 0
    .param p1, "attitudes_count"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->attitudes_count:I

    .line 85
    return-void
.end method

.method public setBmiddle_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "bmiddle_pic"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->bmiddle_pic:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setComments_count(I)V
    .locals 0
    .param p1, "comments_count"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->comments_count:I

    .line 229
    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->created_at:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0
    .param p1, "favorited"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->favorited:Z

    .line 173
    return-void
.end method

.method public setGeo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;)V
    .locals 0
    .param p1, "geo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;

    .line 117
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->id:J

    .line 157
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->idstr:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIn_reply_to_screen_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_screen_name"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_screen_name:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setIn_reply_to_status_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_status_id"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_status_id:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setIn_reply_to_user_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "in_reply_to_user_id"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->in_reply_to_user_id:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setMelvel(I)V
    .locals 0
    .param p1, "melvel"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->melvel:I

    .line 237
    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->mid:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setOriginal_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "original_pic"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->original_pic:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPicList(Ljava/util/List;)V
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
    .line 260
    .local p1, "pics":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->pic_urls:Ljava/util/List;

    .line 261
    return-void
.end method

.method public setReposts_count(I)V
    .locals 0
    .param p1, "reposts_count"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->reposts_count:I

    .line 221
    return-void
.end method

.method public setRetweeted_status(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;)V
    .locals 0
    .param p1, "retweeted_status"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    .line 253
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->source:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->text:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setThumbnail_pic(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail_pic"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->thumbnail_pic:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0
    .param p1, "truncated"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->truncated:Z

    .line 181
    return-void
.end method

.method public setUser(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 133
    return-void
.end method

.method public setVisible(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;)V
    .locals 0
    .param p1, "visible"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;

    .line 245
    return-void
.end method
