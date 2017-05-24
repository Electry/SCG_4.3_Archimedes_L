.class public Lcom/lenovo/scg/common/ui/DetectDialog;
.super Ljava/lang/Object;
.source "DetectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    }
.end annotation


# static fields
.field private static final KEY_DETECT_PLATFORM:Ljava/lang/String; = "detect_platform_checkout"

.field private static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private final GONE:I

.field private final VISIBLE:I

.field private icon_warning:Landroid/graphics/drawable/Drawable;

.field private final id_betrue:I

.field private mBetrueButton:Landroid/widget/TextView;

.field private mBetrueRunnable:Ljava/lang/Runnable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxParent:Landroid/view/View;

.field private mContentText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mTitleText:Landroid/widget/TextView;

.field private mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

.field private text_arm:Ljava/lang/CharSequence;

.field private text_unLenovo:Ljava/lang/CharSequence;

.field private text_x86:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->GONE:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->VISIBLE:I

    .line 42
    const v0, 0x7f100406

    iput v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->id_betrue:I

    .line 46
    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/ui/DetectDialog$1;-><init>(Lcom/lenovo/scg/common/ui/DetectDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 56
    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/ui/DetectDialog$2;-><init>(Lcom/lenovo/scg/common/ui/DetectDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/DetectDialog;->initViews()V

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/DetectDialog;->initListener()V

    .line 101
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/DetectDialog;->resetViews()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/ui/DetectDialog;)Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/DetectDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/ui/DetectDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/DetectDialog;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/DetectDialog;->putBooleanToPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/ui/DetectDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/ui/DetectDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getBooleanFromPreferences(Ljava/lang/Boolean;)Z
    .locals 3
    .param p0, "defValue"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    .line 93
    :cond_0
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "detect_platform_checkout"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0400a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f093a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_arm:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f093c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_x86:Ljava/lang/CharSequence;

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f093b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_unLenovo:Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mTitleText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100403

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100406

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueButton:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100405

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100404

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mCheckBoxParent:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->icon_warning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mTitleText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 128
    return-void
.end method

.method private putBooleanToPreferences()V
    .locals 3

    .prologue
    .line 75
    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    .line 81
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "detect_platform_checkout"

    iget-object v2, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method private resetViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 135
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_arm:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mCheckBoxParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_x86:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mCheckBoxParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_unLenovo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->text_unLenovo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    return-void
.end method

.method public setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "betrue"    # Ljava/lang/Runnable;
    .param p2, "cancel"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueRunnable:Ljava/lang/Runnable;

    .line 150
    return-void
.end method
