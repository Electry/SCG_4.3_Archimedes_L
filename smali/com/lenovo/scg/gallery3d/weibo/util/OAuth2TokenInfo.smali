.class public Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;
.super Ljava/lang/Object;
.source "OAuth2TokenInfo.java"


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:Ljava/lang/String;

.field private remind_in:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind_in()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->remind_in:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->access_token:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .locals 0
    .param p1, "expires_in"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->expires_in:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setRemind_in(Ljava/lang/String;)V
    .locals 0
    .param p1, "remind_in"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->remind_in:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenInfo;->uid:Ljava/lang/String;

    .line 43
    return-void
.end method
