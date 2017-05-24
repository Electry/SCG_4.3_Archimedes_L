.class public Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
.super Ljava/lang/Object;
.source "AutoUpdateDialog.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field public static final NEW_VERSION_REMIND:Ljava/lang/String; = "NEW_VERSION_REMIND"

.field public static final OLD_VERSION_CODE:Ljava/lang/String; = "OLD_VERSION_CODE"


# instance fields
.field private mAutoUpdateCameraExplainsParent:Landroid/widget/LinearLayout;

.field private mAutoUpdateGalleryExplainParent:Landroid/widget/LinearLayout;

.field private mAutoUpdateScrollView:Landroid/widget/ScrollView;

.field private mAutoUpdateTitle:Landroid/widget/TextView;

.field private mCancelUpdateListener:Landroid/view/View$OnClickListener;

.field private mCancelView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContentsViews:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentVersionCode:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mNewVersionAdvise:Landroid/widget/TextView;

.field private mNewVersionDate:Landroid/widget/TextView;

.field private mNewVersionName:Landroid/widget/TextView;

.field private mNewVersionSize:Landroid/widget/TextView;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOrientation:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mUpdateListener:Landroid/view/View$OnClickListener;

.field private mUpdateView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    .line 74
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 92
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 104
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 111
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->initViews()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCurrentVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method private initCameraUpdateDetails(Ljava/lang/String;)V
    .locals 8
    .param p1, "updateDetails"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v6, "[\\t\\n\\r]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "details":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 186
    aget-object v5, v0, v1

    .line 187
    .local v5, "update":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v4, "textView":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 192
    .local v3, "scaledDensity":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 193
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 195
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 199
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateCameraExplainsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 201
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "scaledDensity":F
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "update":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100105

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContentsViews:Landroid/view/ViewGroup;

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContentsViews:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x7f100103

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateScrollView:Landroid/widget/ScrollView;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x7f1000ff

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10010f

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionAdvise:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionAdvise:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionAdvise:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100101

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateTitle:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100108

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionName:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10010b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionSize:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10010e

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionDate:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10011b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCancelView:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCancelView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10011c

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mUpdateView:Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mUpdateView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100114

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateCameraExplainsParent:Landroid/widget/LinearLayout;

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100118

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateGalleryExplainParent:Landroid/widget/LinearLayout;

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100104

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "NEW_VERSION_REMIND"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, "isNewVersionToRemind":Z
    if-eqz v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 4

    .prologue
    .line 253
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 256
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 261
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :goto_0
    return-void

    .line 264
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 271
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    return-void
.end method

.method public initGalleryUpdateDetails(Ljava/lang/String;)V
    .locals 9
    .param p1, "updateDetails"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0901a4

    .line 204
    const-string v6, "[\\t\\n\\r]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "details":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 206
    aget-object v5, v0, v1

    .line 207
    .local v5, "update":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v4, "textView":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 212
    .local v3, "scaledDensity":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v1, :cond_1

    .line 215
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 219
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x3

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 222
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mAutoUpdateGalleryExplainParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 217
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 224
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "scaledDensity":F
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "update":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public initNewVersionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newVersionName"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionName:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    return-void
.end method

.method public initNewVersionSize(Ljava/lang/String;)V
    .locals 10
    .param p1, "newVersionSize"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 158
    .local v2, "newSize":J
    long-to-float v6, v2

    const/high16 v7, 0x49800000    # 1048576.0f

    div-float v5, v6, v7

    .line 159
    .local v5, "size":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v6, "##0.00"

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "fnum":Ljava/text/DecimalFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v8, v5

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "newSizeString":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionSize:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionSize:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "fnum":Ljava/text/DecimalFormat;
    .end local v2    # "newSize":J
    .end local v4    # "newSizeString":Ljava/lang/String;
    .end local v5    # "size":F
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initUpdateDetails(Ljava/lang/String;)V
    .locals 6
    .param p1, "updateDetails"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "details":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 171
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mNewVersionDate:Landroid/widget/TextView;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    .line 175
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->initCameraUpdateDetails(Ljava/lang/String;)V

    .line 177
    :cond_1
    aget-object v1, v0, v5

    if-eqz v1, :cond_2

    .line 178
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->initGalleryUpdateDetails(Ljava/lang/String;)V

    .line 181
    :cond_2
    return-void
.end method

.method public setCancelUpdateListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCancelUpdateListener:Landroid/view/View$OnClickListener;

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCancelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCancelUpdateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 247
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mOrientation:I

    .line 248
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->resetLayout()V

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mRotateAutoUpdateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 250
    return-void
.end method

.method public setUpdateListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mUpdateListener:Landroid/view/View$OnClickListener;

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mUpdateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mUpdateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentVersionCode"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentVersionCode---------------:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCurrentVersionCode:Ljava/lang/String;

    .line 243
    return-void
.end method
