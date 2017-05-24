.class public Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
.super Ljava/lang/Object;
.source "ComboSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;
    }
.end annotation


# static fields
.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPrefGlobal:Landroid/content/SharedPreferences;

.field private mPrefLocal:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraGlobalPreferencesName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    .line 53
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 55
    sget-object v3, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "oldprefs":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "pref_version_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "pref_version_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->moveGlobalPrefsFrom(Landroid/content/SharedPreferences;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "DEBUG":Z
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "my_debug_name"

    const-string/jumbo v4, "my_debug_name"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :cond_1
    return-void

    .line 57
    .end local v0    # "DEBUG":Z
    .end local v1    # "oldprefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v1, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSharedPreferencesNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 129
    .local v1, "numOfCameras":I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 131
    .local v2, "prefNames":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraGlobalPreferencesName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 134
    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferencesName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v2
.end method

.method private static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_setting_location_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_video_first_use_hint_shown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_video_effect_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_camera_timer_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_camera_timer_sound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_photosphere_picturesize_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveGlobalPrefsFrom(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "src"    # Landroid/content/SharedPreferences;

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 118
    .local v0, "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string/jumbo v1, "pref_version_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 119
    const-string/jumbo v1, "pref_video_time_lapse_frame_interval_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 120
    const-string/jumbo v1, "pref_camera_id_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 121
    const-string v1, "camera_setting_location_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 122
    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 123
    const-string/jumbo v1, "pref_video_first_use_hint_shown_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 124
    const-string/jumbo v1, "pref_video_effect_key"

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 125
    return-void
.end method

.method private movePrefFrom(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "src"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :cond_1
    return-void

    .line 103
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 105
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 107
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 109
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences$MyEditor;-><init>(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V

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
    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "ComboSharedPreference"

    const-string v1, "mPrefLocal is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 200
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getGlobal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 182
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLocal()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 191
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 194
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->isGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 223
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 347
    .local v1, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v1, :cond_0

    .line 348
    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v1    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 352
    const-string v2, "CameraSettingsChange"

    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public setLocalId(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 142
    invoke-static {p2}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferencesName(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "prefName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mPrefLocal:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 148
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method
