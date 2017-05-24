.class public Lcn/jingling/lib/textbubble/ToastMaker;
.super Ljava/lang/Object;
.source "ToastMaker.java"


# static fields
.field private static mAppContext:Landroid/content/Context;

.field private static toast:Landroid/widget/Toast;

.field private static toastMidUp:Landroid/widget/Toast;

.field private static toastMiddle:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideToastMidUp()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 104
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 41
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toast:Landroid/widget/Toast;

    .line 45
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 46
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method

.method public static showToastLong(I)V
    .locals 3
    .param p0, "textID"    # I

    .prologue
    .line 26
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/textbubble/ToastMaker;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static showToastLong(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/jingling/lib/textbubble/ToastMaker;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public static showToastLongMiddle(I)V
    .locals 4
    .param p0, "textID"    # I

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    .line 68
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 69
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 70
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method

.method public static showToastShort(I)V
    .locals 3
    .param p0, "textID"    # I

    .prologue
    .line 36
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/textbubble/ToastMaker;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public static showToastShort(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/jingling/lib/textbubble/ToastMaker;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public static showToastShortMidUp(I)V
    .locals 4
    .param p0, "textID"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    .line 80
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 81
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    const/4 v1, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toast;->setMargin(FF)V

    .line 82
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 83
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void
.end method

.method public static showToastShortMidUpLong(I)V
    .locals 4
    .param p0, "textID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    .line 93
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 94
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    const/4 v1, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toast;->setMargin(FF)V

    .line 95
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 96
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMidUp:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.method public static showToastShortMiddle(I)V
    .locals 3
    .param p0, "textID"    # I

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    .line 56
    :cond_0
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 57
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 58
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    sget-object v1, Lcn/jingling/lib/textbubble/ToastMaker;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v0, Lcn/jingling/lib/textbubble/ToastMaker;->toastMiddle:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
.end method
