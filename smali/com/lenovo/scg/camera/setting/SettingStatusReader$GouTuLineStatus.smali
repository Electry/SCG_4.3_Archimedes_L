.class public Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
.super Ljava/lang/Object;
.source "SettingStatusReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/SettingStatusReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GouTuLineStatus"
.end annotation


# instance fields
.field private isShowed:Z

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/SettingStatusReader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/SettingStatusReader;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->this$0:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isShowed()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed:Z

    return v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->mType:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed:Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed:Z

    goto :goto_0
.end method
