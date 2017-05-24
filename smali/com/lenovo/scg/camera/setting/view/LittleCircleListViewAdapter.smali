.class public Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "LittleCircleListViewAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$1;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mOnCircleItemClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;

.field private mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

.field private mOnCircleItemHoverListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;

.field private mOnCircleItemLongClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;

.field private mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/setting/view/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpen:Lcom/lenovo/scg/camera/setting/view/ActionListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;)V
    .locals 9
    .param p1, "mCameraActivity"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSpen:Lcom/lenovo/scg/camera/setting/view/ActionListener;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204c6

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v3, 0x7f0204db

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x4

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204c9

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_ABOUT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v3, 0x7f0204b3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x6

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204e4

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/4 v1, 0x7

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204b7

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/16 v1, 0x8

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204e1

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SUPER_LIGHT:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v3, 0x7f0204de

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/16 v1, 0xa

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204fc

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/16 v1, 0xb

    new-instance v2, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    const v4, 0x7f0204fe

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;-><init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/16 v1, 0xc

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    const/16 v1, 0xd

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 159
    .local v0, "info":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    if-nez v0, :cond_0

    .line 160
    const-wide/16 v2, 0x0

    .line 162
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getmImageResID()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .locals 4
    .param p1, "mType"    # Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 148
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 149
    .local v1, "mItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "mItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_3
    move-object v1, v2

    .line 153
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 170
    move-object v2, p2

    .line 172
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040057

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mSpen:Lcom/lenovo/scg/camera/setting/view/ActionListener;

    invoke-virtual {v3, v2, p0}, Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerInputHandler(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V

    .line 178
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$1;)V

    .line 179
    .local v0, "holder":Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;
    const v3, 0x7f100080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 180
    const v3, 0x7f10022f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 183
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    :goto_0
    const v3, 0x7f100007

    invoke-virtual {v2, v3, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 191
    const v3, 0x7f100008

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 198
    if-nez p1, :cond_1

    .line 199
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020315

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 211
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 212
    .local v1, "mSettingItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    if-eqz v1, :cond_5

    .line 213
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getmImageResID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_2
    return-object v2

    .line 185
    .end local v0    # "holder":Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;
    .end local v1    # "mSettingItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;
    goto :goto_0

    .line 200
    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    .line 201
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020316

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 202
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 203
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020313

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 204
    :cond_3
    const/16 v3, 0x9

    if-ne p1, v3, :cond_4

    .line 205
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020314

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 207
    :cond_4
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020312

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 216
    .restart local v1    # "mSettingItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_5
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v3, v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public handleEvent(Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;)V
    .locals 4
    .param p1, "input"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;

    .prologue
    .line 272
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$1;->$SwitchMap$com$lenovo$scg$camera$setting$view$ActionListener$InputType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getInputType()Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 274
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getClickAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;->onClick(Landroid/view/View;Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->LONGCLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getClickAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemLongClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemLongClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;->onLongClick(Landroid/view/View;Landroid/widget/BaseAdapter;)Z

    goto :goto_0

    .line 289
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->MOVE:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getInputAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getEventTime()J

    move-result-wide v2

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;->onHover(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z

    goto :goto_0

    .line 293
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->UP:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getButtonAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getEventTime()J

    move-result-wide v2

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;->onHoverButtonUp(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z

    goto :goto_0

    .line 298
    :cond_3
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->DOWN:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getButtonAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->getEventTime()J

    move-result-wide v2

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;->onHoverButtonDown(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnCircleItemClickListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;

    .line 225
    return-void
.end method

.method public setOnCircleItemHoverButtonDownListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    .line 241
    return-void
.end method

.method public setOnCircleItemHoverButtonUpListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverButtonListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;

    .line 237
    return-void
.end method

.method public setOnCircleItemHoverListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemHoverListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;

    .line 233
    return-void
.end method

.method public setOnCircleItemLongClickListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->mOnCircleItemLongClickListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;

    .line 229
    return-void
.end method
