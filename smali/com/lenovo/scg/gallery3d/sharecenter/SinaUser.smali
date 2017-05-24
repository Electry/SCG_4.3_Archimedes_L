.class public Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
.super Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
.source "SinaUser.java"


# instance fields
.field private id:J

.field private profile_image_url:Ljava/lang/String;

.field private screen_name:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->profile_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->id:J

    return-wide v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->selected:Z

    return v0
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "photourl"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->profile_image_url:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->screen_name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->selected:Z

    .line 63
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->id:J

    .line 29
    return-void
.end method
