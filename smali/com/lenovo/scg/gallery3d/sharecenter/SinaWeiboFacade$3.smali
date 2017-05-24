.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$3;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getFriendShips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$3;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 195
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .param p1, "e"    # Lcom/weibo/sdk/android/WeiboException;

    .prologue
    .line 189
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 187
    return-void
.end method
