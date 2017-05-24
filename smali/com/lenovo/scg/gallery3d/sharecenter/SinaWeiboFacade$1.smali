.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->logoutSinaWeibo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

.field final synthetic val$scgLogoutListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->val$scgLogoutListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->val$scgLogoutListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;->logoutResult(Z)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->clear(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$202(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 152
    return-void
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 157
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 2
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->clear(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->val$scgLogoutListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;->logoutResult(Z)V

    .line 146
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->clear(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;->val$scgLogoutListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;->logoutResult(Z)V

    .line 141
    return-void
.end method
