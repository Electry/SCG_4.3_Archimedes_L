.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6d19bdead733735bL


# instance fields
.field private allow_all_act_msg:Z

.field private allow_all_comment:Z

.field private avatar_large:Ljava/lang/String;

.field private bi_followers_count:I

.field private city:I

.field private created_at:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private favourites_count:I

.field private follow_me:Z

.field private followers_count:I

.field private following:Z

.field private friends_count:I

.field private gender:Ljava/lang/String;

.field private geo_enabled:Z

.field private id:J

.field private idstr:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private online_status:I

.field private profile_image_url:Ljava/lang/String;

.field private province:I

.field private remark:Ljava/lang/String;

.field private screen_name:Ljava/lang/String;

.field private statuses_count:I

.field private url:Ljava/lang/String;

.field private verified:Z

.field private verified_reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_large()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->avatar_large:Ljava/lang/String;

    return-object v0
.end method

.method public getBi_followers_count()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->bi_followers_count:I

    return v0
.end method

.method public getCity()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->city:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFavourites_count()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->favourites_count:I

    return v0
.end method

.method public getFollowers_count()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->followers_count:I

    return v0
.end method

.method public getFriends_count()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->friends_count:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->id:J

    return-wide v0
.end method

.method public getIdstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->idstr:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->online_status:I

    return v0
.end method

.method public getProfile_image_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->profile_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->province:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatuses_count()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->statuses_count:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified_reason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->verified_reason:Ljava/lang/String;

    return-object v0
.end method

.method public isAllow_all_act_msg()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->allow_all_act_msg:Z

    return v0
.end method

.method public isAllow_all_comment()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->allow_all_comment:Z

    return v0
.end method

.method public isFollow_me()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->follow_me:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->following:Z

    return v0
.end method

.method public isGeo_enabled()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->geo_enabled:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->verified:Z

    return v0
.end method

.method public setAllow_all_act_msg(Z)V
    .locals 0
    .param p1, "allow_all_act_msg"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->allow_all_act_msg:Z

    .line 228
    return-void
.end method

.method public setAllow_all_comment(Z)V
    .locals 0
    .param p1, "allow_all_comment"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->allow_all_comment:Z

    .line 260
    return-void
.end method

.method public setAvatar_large(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar_large"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->avatar_large:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setBi_followers_count(I)V
    .locals 0
    .param p1, "bi_followers_count"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->bi_followers_count:I

    .line 300
    return-void
.end method

.method public setCity(I)V
    .locals 0
    .param p1, "city"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->city:I

    .line 124
    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->created_at:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->description:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->domain:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFavourites_count(I)V
    .locals 0
    .param p1, "favourites_count"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->favourites_count:I

    .line 204
    return-void
.end method

.method public setFollow_me(Z)V
    .locals 0
    .param p1, "follow_me"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->follow_me:Z

    .line 284
    return-void
.end method

.method public setFollowers_count(I)V
    .locals 0
    .param p1, "followers_count"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->followers_count:I

    .line 180
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0
    .param p1, "following"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->following:Z

    .line 220
    return-void
.end method

.method public setFriends_count(I)V
    .locals 0
    .param p1, "friends_count"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->friends_count:I

    .line 188
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->gender:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setGeo_enabled(Z)V
    .locals 0
    .param p1, "geo_enabled"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->geo_enabled:Z

    .line 244
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->id:J

    .line 84
    return-void
.end method

.method public setIdstr(Ljava/lang/String;)V
    .locals 0
    .param p1, "idstr"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->idstr:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->lang:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->location:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->name:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setOnline_status(I)V
    .locals 0
    .param p1, "online_status"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->online_status:I

    .line 292
    return-void
.end method

.method public setProfile_image_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "profile_image_url"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->profile_image_url:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setProvince(I)V
    .locals 0
    .param p1, "province"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->province:I

    .line 116
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->remark:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setScreen_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen_name"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->screen_name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setStatuses_count(I)V
    .locals 0
    .param p1, "statuses_count"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->statuses_count:I

    .line 196
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->url:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->verified:Z

    .line 252
    return-void
.end method

.method public setVerified_reason(Ljava/lang/String;)V
    .locals 0
    .param p1, "verified_reason"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->verified_reason:Ljava/lang/String;

    .line 276
    return-void
.end method
