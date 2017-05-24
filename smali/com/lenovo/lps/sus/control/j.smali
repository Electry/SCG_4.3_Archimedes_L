.class Lcom/lenovo/lps/sus/control/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/j;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    iput p2, p0, Lcom/lenovo/lps/sus/control/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v1, :cond_0

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->d:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/lenovo/lps/sus/control/j;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
