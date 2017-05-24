.class public Lcom/lenovo/scg/gallery3d/app/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBackBtnLayout:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDefaultPageText:Landroid/widget/TextView;

.field private mGallerySettingLayout:Landroid/widget/LinearLayout;

.field private mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

.field private mLocalImageFilterLayout:Landroid/widget/LinearLayout;

.field private mPhotoViewOrientionSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f100896

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mBackBtnLayout:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mBackBtnLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f100899

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mDefaultPageText:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f100898

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f10089b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mLocalImageFilterLayout:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mLocalImageFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f10089d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mPhotoViewOrientionSwitch:Landroid/widget/Switch;

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mPhotoViewOrientionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-void
.end method

.method private loadStoreState()V
    .locals 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getDefaultPage()I

    move-result v0

    .line 176
    .local v0, "defaultPage":I
    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mPhotoViewOrientionSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getPhotoViewAutoRotated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    return-void

    .line 178
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mDefaultPageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0f06c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mDefaultPageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0f06cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateDefaultTextView()V
    .locals 17

    .prologue
    .line 91
    const v12, 0x7f10089a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "defaultTv":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 94
    .local v1, "count":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v7

    .line 97
    .local v7, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    .line 98
    .local v3, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const-string v12, "/local/all"

    invoke-virtual {v3, v12}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    .line 99
    .local v6, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    .line 100
    .local v8, "subMediaCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 101
    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v11

    .line 102
    .local v11, "tmpMS":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "tmpBucketId":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 100
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    .end local v10    # "tmpBucketId":Ljava/lang/String;
    .end local v11    # "tmpMS":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    if-nez v8, :cond_3

    instance-of v12, v6, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    if-eqz v12, :cond_3

    move-object v12, v6

    check-cast v12, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->isInitLoad()Z

    move-result v12

    if-nez v12, :cond_3

    .line 109
    check-cast v6, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    .end local v6    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->getBucketEntry()[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v4

    .line 110
    .local v4, "entrys":[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    const/4 v5, 0x0

    :goto_1
    array-length v12, v4

    if-ge v5, v12, :cond_3

    .line 111
    aget-object v12, v4, v5

    iget v12, v12, Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 110
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "entrys":[Lcom/lenovo/scg/gallery3d/data/BucketHelper$BucketEntry;
    :cond_3
    if-nez v1, :cond_4

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0906

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "tmp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    return-void

    .line 122
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0905

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .restart local v9    # "tmp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mPhotoViewOrientionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->setPhotoViewAutoRotated(Z)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x7f10089d
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mBackBtnLayout:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->finish()V

    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "defaultPageIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    .end local v0    # "defaultPageIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.lenovo.scg.FILTERALBUM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, "imageFilterIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f100896
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 61
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "language":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const v2, 0x7f040171

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->setContentView(I)V

    .line 67
    :goto_0
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    .line 70
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->initView()V

    .line 76
    return-void

    .line 65
    :cond_0
    const v2, 0x7f040170

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->loadStoreState()V

    .line 133
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SettingActivity;->updateDefaultTextView()V

    .line 134
    return-void
.end method
