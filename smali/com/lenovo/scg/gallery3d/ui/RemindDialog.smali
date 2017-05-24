.class public Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
.super Ljava/lang/Object;
.source "RemindDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    }
.end annotation


# instance fields
.field private final GONE:I

.field private final VISIBLE:I

.field private icon_warning:Landroid/graphics/drawable/Drawable;

.field private mBetrueButton:Landroid/view/View;

.field private mBetrueRunnable:Ljava/lang/Runnable;

.field private mButtonLine:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxParent:Landroid/view/View;

.field private mContentText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mTitle:Landroid/view/View;

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

.field private text_giveup:Ljava/lang/CharSequence;

.field private text_logout:Ljava/lang/CharSequence;

.field private text_mobile:Ljava/lang/CharSequence;

.field private text_prompt:Ljava/lang/CharSequence;

.field private text_wifi:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->GONE:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->VISIBLE:I

    .line 66
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    .line 109
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->initViews()V

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->initListener()V

    .line 111
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->resetViews()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mBetrueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initListener()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const v6, 0x7f0f0925

    const/4 v5, 0x0

    .line 115
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 116
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04015d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "dlgView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0653

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0663

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    .line 147
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 155
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_prompt:Ljava/lang/CharSequence;

    .line 156
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0923

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_mobile:Ljava/lang/CharSequence;

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0924

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_wifi:Ljava/lang/CharSequence;

    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0919

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_logout:Ljava/lang/CharSequence;

    .line 159
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0926

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_giveup:Ljava/lang/CharSequence;

    .line 163
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f10005a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mTitle:Landroid/view/View;

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f100823

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContentText:Landroid/widget/TextView;

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f100825

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f100824

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBoxParent:Landroid/view/View;

    .line 173
    return-void
.end method

.method private resetViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_prompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_mobile:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindMobile()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_wifi:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 192
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->LOGOUT:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBoxParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_logout:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->GIVEUP:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBoxParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->text_giveup:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    return-void
.end method

.method public setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "betrue"    # Ljava/lang/Runnable;
    .param p2, "cancel"    # Ljava/lang/Runnable;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mBetrueRunnable:Ljava/lang/Runnable;

    .line 205
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCancelRunnable:Ljava/lang/Runnable;

    .line 206
    return-void
.end method
