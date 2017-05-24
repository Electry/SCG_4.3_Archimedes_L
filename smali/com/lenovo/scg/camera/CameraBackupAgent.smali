.class public Lcom/lenovo/scg/camera/CameraBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "CameraBackupAgent.java"


# static fields
.field private static final CAMERA_BACKUP_KEY:Ljava/lang/String; = "camera_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getSharedPreferencesNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "prefNames":[Ljava/lang/String;
    const-string v2, "camera_prefs"

    new-instance v3, Landroid/app/backup/SharedPreferencesBackupHelper;

    invoke-direct {v3, v0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/CameraBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 34
    return-void
.end method
