.class public Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
.super Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
.source "TencentUser.java"


# instance fields
.field private name:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private photourl:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->photourl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->selected:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "photourl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->photourl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->nick:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->selected:Z

    .line 72
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
