.class public Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
.super Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
.source "CameraSettingPreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;)V
    .locals 1
    .param p1, "child"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    .line 68
    .local v2, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    instance-of v3, v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 69
    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 70
    .local v1, "listPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    .end local v1    # "listPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    .end local v2    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :goto_0
    return-object v1

    .line 71
    .restart local v2    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :cond_1
    instance-of v3, v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    if-eqz v3, :cond_0

    .line 72
    check-cast v2, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .end local v2    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    .line 73
    .restart local v1    # "listPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 76
    .end local v1    # "listPref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    return-object v0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    .line 55
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;->reloadValue()V

    goto :goto_0

    .line 57
    .end local v1    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
