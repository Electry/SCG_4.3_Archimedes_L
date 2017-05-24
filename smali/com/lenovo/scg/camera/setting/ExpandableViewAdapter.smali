.class public Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;,
        Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandableViewAdapter"


# instance fields
.field private backFront:[I

.field private group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

.field private icons:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private inflater1:Landroid/view/LayoutInflater;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private scene:[I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Landroid/content/Context;Ljava/util/ArrayList;Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;)V
    .locals 1
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "c"    # Landroid/content/Context;
    .param p4, "group"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/camera/setting/CameraSettingController;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 57
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    .line 59
    iput-object p4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 60
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->inflater1:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method

.method private dip2px(I)I
    .locals 3
    .param p1, "dipValue"    # I

    .prologue
    .line 428
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 429
    const/4 v1, 0x0

    .line 431
    :goto_0
    return v1

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 431
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method private showLiveNightIfNeed(Landroid/widget/RelativeLayout;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mSupportLayout"    # Landroid/widget/RelativeLayout;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 209
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 87
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 97
    if-nez p4, :cond_1

    .line 98
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->inflater1:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isRTLlanguage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f040051

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 101
    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;)V

    .line 102
    .local v0, "holderClild":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;
    const v4, 0x7f10020f

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->image:Landroid/widget/ImageView;

    .line 103
    const v4, 0x7f100209

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->parameters:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f100210

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->radioButton:Landroid/widget/RadioButton;

    .line 105
    const v4, 0x7f10020a

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->text_shake:Landroid/widget/TextView;

    .line 106
    const v4, 0x7f100211

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->viewLine:Landroid/view/View;

    .line 107
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->parameters:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->text_shake:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 109
    const v4, 0x7f10020b

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->supportSpecialFunctionLayout:Landroid/widget/RelativeLayout;

    .line 113
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getChildrenCount(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 194
    :goto_2
    return-object p4

    .line 98
    .end local v0    # "holderClild":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;
    :cond_0
    const v4, 0x7f040050

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;

    .restart local v0    # "holderClild":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;
    goto :goto_1

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "pref_camera_anti_shake_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->text_shake:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v5, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->text_shake:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v4, v2, p2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getEntryValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f015a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_4
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-static {v5, v2, p2, p1, v6}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;IILjava/util/ArrayList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    const-string v4, "camera_setting_picture_size_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    .line 138
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->image:Landroid/widget/ImageView;

    const v5, 0x7f0203a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :cond_3
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->parameters:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v5, v2, p2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getEntryValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_square_pic_key"

    const-string/jumbo v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 147
    const-string v4, "camera_setting_picture_size_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 148
    iget-object v5, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->radioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x2

    if-ne p2, v4, :cond_9

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    .line 150
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->image:Landroid/widget/ImageView;

    const v5, 0x7f0203a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :cond_4
    :goto_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_hdr_key"

    const-string/jumbo v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    .local v1, "isHDR":Z
    const-string v4, "camera_setting_picture_size_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 163
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    .line 164
    if-eqz v1, :cond_e

    .line 165
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p4, v4}, Landroid/view/View;->setAlpha(F)V

    .line 175
    :cond_5
    :goto_7
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExpandableViewViewadapter--getview : Key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 177
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->supportSpecialFunctionLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v2, p2}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->showLiveNightIfNeed(Landroid/widget/RelativeLayout;Ljava/lang/String;I)V

    .line 179
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->getChildrenCount(I)I

    move-result v5

    if-ne v4, v5, :cond_10

    .line 180
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->viewLine:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_8
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    .line 186
    .local v3, "orientation":I
    if-eqz v3, :cond_6

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_11

    .line 187
    :cond_6
    const v4, 0x7f100209

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xe6

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 188
    const v4, 0x7f10020a

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xe6

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_2

    .line 127
    .end local v1    # "isHDR":Z
    .end local v3    # "orientation":I
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f0158

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 131
    :cond_8
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->text_shake:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 148
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 153
    :cond_a
    iget-object v5, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->radioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v4, v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getValueIndex(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v4

    if-ne p2, v4, :cond_b

    const/4 v4, 0x1

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    .line 157
    :cond_c
    iget-object v5, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->radioButton:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v4, v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getValueIndex(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v4

    if-ne p2, v4, :cond_d

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    .line 167
    .restart local v1    # "isHDR":Z
    :cond_e
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p4, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 171
    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p4, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 182
    :cond_10
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderClild;->viewLine:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 190
    .restart local v3    # "orientation":I
    :cond_11
    const v4, 0x7f100209

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xaa

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 191
    const v4, 0x7f10020a

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xaa

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getParametersLength(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 239
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f100213

    const v8, 0x7f10020a

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 250
    if-nez p3, :cond_5

    .line 251
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isRTLlanguage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f040053

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 257
    new-instance v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;-><init>(Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;)V

    .line 258
    .local v0, "holderParent":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;
    const v3, 0x7f100212

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    .line 259
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    .line 261
    const v3, 0x7f1000a9

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->arrow:Landroid/widget/ImageView;

    .line 262
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 263
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 266
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "pref_camera_effect_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "camera_setting_reset_to_default_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "camera_setting_about_info_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "camera_setting_developer_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "camera_setting_camera_effect_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    :cond_0
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->arrow:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :goto_2
    const-string v3, "ExpandableViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupView key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_7

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    aget v3, v3, p1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getParametersValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 289
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    const-string/jumbo v3, "pref_camera_effect_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/lenovo/scg/camera/CameraUtil;->isEffectChange:Z

    if-eqz v3, :cond_8

    .line 291
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f05f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_4
    const-string v3, "camera_setting_picture_size_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_square_pic_key"

    const-string/jumbo v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 303
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_a

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    aget v3, v3, p1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const-string v3, "00000000009999999999 suqare off"

    invoke-static {v6, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 317
    :cond_1
    :goto_6
    const-string v3, "camera_setting_video_quality_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_video_type_key"

    const-string/jumbo v5, "normal"

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 319
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_c

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    aget v3, v3, p1

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_2
    :goto_8
    if-eqz p2, :cond_e

    .line 330
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->arrow:Landroid/widget/ImageView;

    const v4, 0x7f02033e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    :goto_9
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->isEnabled(ILjava/lang/String;)Z

    move-result v3

    invoke-static {p3, v3}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setEnabledStateExpandable(Landroid/view/View;Z)V

    .line 342
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v2

    .line 343
    .local v2, "orientation":I
    if-eqz v2, :cond_3

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_f

    .line 344
    :cond_3
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0xe6

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 345
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0xe6

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 350
    :goto_a
    return-object p3

    .line 251
    .end local v0    # "holderParent":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "orientation":I
    :cond_4
    const v3, 0x7f040052

    goto/16 :goto_0

    .line 268
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;

    .restart local v0    # "holderParent":Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;
    goto/16 :goto_1

    .line 276
    .restart local v1    # "key":Ljava/lang/String;
    :cond_6
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 282
    :cond_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 293
    :cond_8
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v4, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getParametersValue(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 296
    :cond_9
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 303
    :cond_a
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_5

    .line 307
    :cond_b
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    const v4, 0x7f0203a3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    const v4, 0x7f0f01fc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 312
    const-string v3, "00000000009999999999 square on"

    invoke-static {v6, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto/16 :goto_6

    .line 319
    :cond_c
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->group:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getIconIds(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_7

    .line 322
    :cond_d
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->menu_status:Landroid/widget/ImageView;

    const v4, 0x7f0202e6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v4, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->parameters:Landroid/widget/TextView;

    const v4, 0x7f0f01e1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 332
    :cond_e
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->arrow:Landroid/widget/ImageView;

    const v4, 0x7f0202cd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 347
    .restart local v2    # "orientation":I
    :cond_f
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0xaa

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 348
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0xaa

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_a
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public init([I[I[I)V
    .locals 1
    .param p1, "Iconids"    # [I
    .param p2, "backFront"    # [I
    .param p3, "scene"    # [I

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->backFront:[I

    .line 66
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->scene:[I

    .line 67
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    .line 68
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->backFront:[I

    .line 69
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->scene:[I

    .line 70
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    .line 71
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->backFront:[I

    .line 72
    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->scene:[I

    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->icons:[I

    .line 74
    return-void
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(ILjava/lang/String;)Z
    .locals 9
    .param p1, "position"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 373
    .local v0, "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v6, :cond_2

    :cond_0
    move v2, v5

    .line 376
    .local v2, "isInHDR":Z
    :goto_0
    const-string v6, "camera_setting_flash_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 377
    .local v1, "isFlashMode":Z
    const-string v6, "camera_setting_square_pic_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 379
    .local v3, "isSquarePicKey":Z
    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    if-eqz v3, :cond_3

    .line 424
    :cond_1
    :goto_1
    return v4

    .end local v1    # "isFlashMode":Z
    .end local v2    # "isInHDR":Z
    .end local v3    # "isSquarePicKey":Z
    :cond_2
    move v2, v4

    .line 373
    goto :goto_0

    .line 384
    .restart local v1    # "isFlashMode":Z
    .restart local v2    # "isInHDR":Z
    .restart local v3    # "isSquarePicKey":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 385
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_setting_hdr_key"

    const-string/jumbo v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 392
    :cond_4
    if-eqz v1, :cond_5

    .line 393
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_setting_hdr_key"

    const-string/jumbo v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 399
    :cond_5
    sget-boolean v6, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_1

    .line 406
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 407
    const-string v6, "camera_setting_goutu_line_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 408
    const-string v6, "goutuline---is on"

    invoke-static {v5, v6}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_7
    const-string v6, "camera_setting_shui_ping_yi_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 417
    :cond_8
    const-string v6, "camera_setting_video_quality_key"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 418
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;->mController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_setting_video_type_key"

    const-string/jumbo v8, "normal"

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "normal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_9
    move v4, v5

    .line 424
    goto :goto_1
.end method
