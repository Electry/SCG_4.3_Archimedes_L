.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPageFactory;
.super Ljava/lang/Object;
.source "CloudPageFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPageFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCloudPage(ILcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    .locals 3
    .param p0, "type"    # I
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 11
    const/4 v1, 0x0

    .line 12
    .local v1, "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    if-eqz p2, :cond_0

    .line 13
    const-string v2, "cloud_page_type_id"

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 31
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPageFactory;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .local v0, "newData":Landroid/os/Bundle;
    const-string v2, "cloud_page_type_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    move-object p2, v0

    goto :goto_0

    .line 22
    .end local v0    # "newData":Landroid/os/Bundle;
    :pswitch_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;

    .end local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-direct {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 34
    .restart local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    :cond_1
    :goto_1
    return-object v1

    .line 25
    :pswitch_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;

    .end local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-direct {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 26
    .restart local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    goto :goto_1

    .line 28
    :pswitch_2
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;

    .end local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-direct {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 29
    .restart local v1    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    goto :goto_1

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
