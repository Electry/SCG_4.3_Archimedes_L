.class public Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;
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
    name = "SaveWeibo_UserInfo"
.end annotation


# instance fields
.field private id:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;JLjava/lang/String;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "username"    # Ljava/lang/String;

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2692
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->id:J

    .line 2693
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->username:Ljava/lang/String;

    .line 2694
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2699
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$SaveWeibo_UserInfo;->username:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    return-void
.end method
