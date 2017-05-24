.class public Lcom/lenovo/scg/camera/PieController;
.super Ljava/lang/Object;
.source "PieController.java"


# static fields
.field protected static CENTER:F = 0.0f

.field protected static final MODE_PHOTO:I = 0x0

.field protected static final MODE_VIDEO:I = 0x1

.field protected static final SWEEP:F = 0.06f

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mListener:Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;",
            "Lcom/lenovo/scg/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "CAM_piecontrol"

    sput-object v0, Lcom/lenovo/scg/camera/PieController;->TAG:Ljava/lang/String;

    .line 47
    const v0, 0x3fc90fdb

    sput v0, Lcom/lenovo/scg/camera/PieController;->CENTER:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pie"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/lenovo/scg/camera/PieController;->mRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mPreferences:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mOverrides:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/PieController;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PieController;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PieController;->reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    return-void
.end method

.method private varargs override(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;[Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    .param p2, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 254
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    .line 256
    aget-object v2, p2, v0

    .line 257
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p2, v4

    .line 258
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 261
    .local v1, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    if-nez v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/PieItem;->setEnabled(Z)V

    .line 265
    .end local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PieController;->reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    .line 266
    return-void

    .line 261
    .restart local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 255
    .end local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 220
    .local v2, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "overrideValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 222
    .local v0, "iconIds":[I
    if-eqz v0, :cond_3

    .line 225
    if-nez v3, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "index":I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    aget v5, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0

    .line 228
    .end local v1    # "index":I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 229
    .restart local v1    # "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 231
    sget-object v4, Lcom/lenovo/scg/camera/PieController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->print()V

    goto :goto_0

    .line 239
    .end local v1    # "index":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getSingleIcon()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PieController;->makeItem(Ljava/lang/String;)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    .line 194
    .local v0, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController;->mRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->addItem(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 195
    return-void
.end method

.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->clearItems()V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PieController;->setPreferenceGroup(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V

    .line 81
    return-void
.end method

.method public makeDialItem(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;IFF)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 1
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    .param p2, "iconId"    # I
    .param p3, "center"    # F
    .param p4, "sweep"    # F

    .prologue
    .line 188
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/PieController;->makeItem(I)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    .line 189
    .local v0, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    return-object v0
.end method

.method protected makeItem(I)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/lenovo/scg/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method protected makeItem(Ljava/lang/CharSequence;)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    new-instance v0, Lcom/lenovo/scg/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 102
    .local v0, "drawable":Lcom/lenovo/scg/camera/drawable/TextDrawable;
    new-instance v1, Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/lenovo/scg/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public makeItem(Ljava/lang/String;)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 9
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v8, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 107
    .local v6, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 145
    :cond_0
    return-object v4

    .line 108
    :cond_1
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 109
    .local v1, "iconIds":[I
    const/4 v7, -0x1

    .line 110
    .local v7, "resid":I
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getUseSingleIcon()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "index":I
    aget v7, v1, v2

    .line 118
    .end local v2    # "index":I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/PieController;->makeItem(I)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v4

    .line 119
    .local v4, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lcom/lenovo/scg/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v8, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v8, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v5, v8

    .line 123
    .local v5, "nOfEntries":I
    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "inner":Lcom/lenovo/scg/camera/ui/PieItem;
    if-eqz v1, :cond_3

    .line 127
    aget v8, v1, v0

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/PieController;->makeItem(I)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    .line 131
    :goto_2
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/ui/PieItem;->addItem(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 133
    move v2, v0

    .line 134
    .restart local v2    # "index":I
    new-instance v8, Lcom/lenovo/scg/camera/PieController$1;

    invoke-direct {v8, p0, v6, v2}, Lcom/lenovo/scg/camera/PieController$1;-><init>(Lcom/lenovo/scg/camera/PieController;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;I)V

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/ui/PieItem;->setOnClickListener(Lcom/lenovo/scg/camera/ui/PieItem$OnClickListener;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    .end local v2    # "index":I
    .end local v3    # "inner":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v4    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v5    # "nOfEntries":I
    :cond_2
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getSingleIcon()I

    move-result v7

    goto :goto_0

    .line 129
    .restart local v0    # "i":I
    .restart local v3    # "inner":Lcom/lenovo/scg/camera/ui/PieItem;
    .restart local v4    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .restart local v5    # "nOfEntries":I
    :cond_3
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/PieController;->makeItem(Ljava/lang/CharSequence;)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    goto :goto_2
.end method

.method public makeSwitchItem(Ljava/lang/String;Z)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "addListener"    # Z

    .prologue
    .line 149
    iget-object v6, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 150
    .local v4, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 184
    :cond_0
    :goto_0
    return-object v3

    .line 151
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 152
    .local v1, "iconIds":[I
    const/4 v5, -0x1

    .line 153
    .local v5, "resid":I
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "index":I
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getUseSingleIcon()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 156
    aget v5, v1, v2

    .line 161
    :goto_1
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/PieController;->makeItem(I)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    .line 162
    .local v3, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6, v5}, Lcom/lenovo/scg/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 164
    iget-object v6, p0, Lcom/lenovo/scg/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v6, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    if-eqz p2, :cond_0

    .line 167
    move-object v0, v3

    .line 168
    .local v0, "fitem":Lcom/lenovo/scg/camera/ui/PieItem;
    new-instance v6, Lcom/lenovo/scg/camera/PieController$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/lenovo/scg/camera/PieController$2;-><init>(Lcom/lenovo/scg/camera/PieController;Ljava/lang/String;Lcom/lenovo/scg/camera/ui/PieItem;)V

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/ui/PieItem;->setOnClickListener(Lcom/lenovo/scg/camera/ui/PieItem$OnClickListener;)V

    goto :goto_0

    .line 159
    .end local v0    # "fitem":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v3    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_2
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getSingleIcon()I

    move-result v5

    goto :goto_1
.end method

.method public onSettingChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mListener:Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController;->mListener:Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;->onCameraSharedPreferenceChanged()V

    .line 87
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 245
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 249
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-direct {p0, v1, p1}, Lcom/lenovo/scg/camera/PieController;->override(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;[Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v1    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->reloadValue()V

    .line 212
    iget-object v2, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 213
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/PieController;->reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    goto :goto_0

    .line 215
    .end local v1    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string/jumbo v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    .line 91
    .local v0, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/camera/PieController;->mListener:Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

    .line 67
    return-void
.end method

.method public setPreferenceGroup(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 208
    return-void
.end method

.method public updateItem(Lcom/lenovo/scg/camera/ui/PieItem;Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v2, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 199
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/lenovo/scg/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/lenovo/scg/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 204
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
