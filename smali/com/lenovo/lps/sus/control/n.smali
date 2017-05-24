.class Lcom/lenovo/lps/sus/control/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Ljava/lang/Integer;)V

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_1"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d()Landroid/content/Context;

    move-result-object v0

    const-string v3, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_2"

    invoke-static {v0, v3}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
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

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->a(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/control/n;->a:Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-static {v1}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b(Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
