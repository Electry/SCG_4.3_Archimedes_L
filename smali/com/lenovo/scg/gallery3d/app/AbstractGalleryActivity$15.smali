.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authResult(Z)V
    .locals 2
    .param p1, "isAuthorSuccess"    # Z

    .prologue
    .line 2195
    if-eqz p1, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getLoginedUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V

    .line 2211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$15;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onAuthPass()V

    .line 2218
    :cond_0
    return-void
.end method
