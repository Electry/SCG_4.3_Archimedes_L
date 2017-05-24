.class public Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;
.super Ljava/lang/Object;
.source "MiniCameraPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences$MyEditor;
    }
.end annotation


# static fields
.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focusmode_key"

.field private static final TAG:Ljava/lang/String; = "MinicameraPreferences"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPrefLocal:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPackageName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mListeners:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences$MyEditor;-><init>(Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 109
    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 100
    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 82
    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getLocal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 91
    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 222
    .local v1, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v1    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_0
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public setLocalId(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->getLocalSharedPreferencesName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "prefName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 54
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method
