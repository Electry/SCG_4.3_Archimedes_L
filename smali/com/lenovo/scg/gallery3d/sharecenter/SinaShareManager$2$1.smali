.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2$1;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->authResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;)V
    .locals 4
    .param p1, "userInfo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 214
    .local v0, "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v1

    .line 215
    .local v1, "uInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    iget v2, p1, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setStatuses_count(I)V

    .line 217
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2$1;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V

    .line 219
    .end local v0    # "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    .end local v1    # "uInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_0
    return-void
.end method
