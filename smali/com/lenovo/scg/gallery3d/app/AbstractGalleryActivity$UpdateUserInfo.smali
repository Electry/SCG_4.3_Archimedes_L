.class public Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateUserInfo"
.end annotation


# instance fields
.field private lid:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private userInfo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;JLcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p2, "lid"    # J
    .param p4, "userInfo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 3752
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3753
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->lid:J

    .line 3754
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->userInfo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 3755
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->userInfo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->userInfo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$UpdateUserInfo;->lid:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    return-void
.end method
