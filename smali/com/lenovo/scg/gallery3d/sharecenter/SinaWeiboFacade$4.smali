.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getLoginedUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

.field final synthetic val$getUserInfoListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;->val$getUserInfoListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v2, "SinaWeiboFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 222
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    .line 223
    .local v1, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;->val$getUserInfoListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;->onGetUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;)V

    .line 224
    return-void
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 228
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 214
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 212
    return-void
.end method
