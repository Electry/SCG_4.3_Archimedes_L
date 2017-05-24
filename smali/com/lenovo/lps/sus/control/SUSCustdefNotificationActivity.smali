.class public Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Landroid/content/Context; = null

.field private static final f:I = 0x3

.field private static g:Ljava/lang/Integer;


# instance fields
.field private d:Z

.field private e:J

.field private final h:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sus_customdef_notification_dialog"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->e:J

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->h:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->j:Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->k:Landroid/widget/Button;

    new-instance v0, Lcom/lenovo/lps/sus/control/n;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/sus/control/n;-><init>(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Integer;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->g:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->g:Ljava/lang/Integer;

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->e:J

    return-wide v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    sput-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUSCustdefNotificationActivity finish isAbortUpdateFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->d(Z)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SUSCustdefNotificationActivity .onCreate() begin"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/b;->d(Z)V

    invoke-virtual {p0, v1}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->requestWindowFeature(I)Z

    const-string v0, "layout"

    sget-object v1, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const-string v1, "UpdateAffairId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->e:J

    const-string v1, "FailFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    const-string v3, "SUS_NOTIFICATION_CONTINUEBUTTON"

    invoke-static {v0, v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->j:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->j:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/lps/sus/control/m;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/sus/control/m;-><init>(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    const-string v3, "SUS_NOTIFICATION_ABORTUPDATEBUTTON"

    invoke-static {v0, v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->k:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->k:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/lps/sus/control/o;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/sus/control/o;-><init>(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_7

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const-string v1, "SUS_NOTIFICATION_TIMEOUTPROMPT"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    const-string v3, "SUS_NOTIFICATION_PROMPTINFO"

    invoke-static {v0, v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const-string v1, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_1"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const-string v2, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_2"

    invoke-static {v0, v2}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    sget-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b:Ljava/lang/String;

    const-string v3, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW"

    invoke-static {v0, v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :cond_7
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    const-string v1, "SUS_NOTIFICATION_UPDATINGPROMPT"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUSCustdefNotificationActivity onDestroy myContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->d(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method
