.class public Lcom/lenovo/lps/sus/b/e;
.super Ljava/lang/Object;


# static fields
.field private static synthetic z:[I


# instance fields
.field public a:Lcom/lenovo/lps/sus/SUSListener;

.field public b:Z

.field public c:Lcom/lenovo/lps/sus/b/a;

.field public d:J

.field public e:Z

.field public f:Lcom/lenovo/lps/sus/b/l;

.field public g:Lcom/lenovo/lps/sus/b/d;

.field public h:Lcom/lenovo/lps/sus/b/g;

.field public i:Lcom/lenovo/lps/sus/b/f;

.field public j:Lcom/lenovo/lps/sus/b/k;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)V
    .locals 8

    const/4 v7, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->b:Z

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->k:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    iput v4, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->p:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->q:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->r:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->u:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    iput-object v6, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    iput-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    iput-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    iget-boolean v0, p2, Lcom/lenovo/lps/sus/b/m;->a:Z

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->b:Z

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-wide v0, p2, Lcom/lenovo/lps/sus/b/m;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    iget-wide v0, p2, Lcom/lenovo/lps/sus/b/m;->p:J

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    iget-wide v0, p2, Lcom/lenovo/lps/sus/b/m;->q:J

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    :goto_0
    iput-object p1, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    iget-wide v0, p2, Lcom/lenovo/lps/sus/b/m;->c:J

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->b:Lcom/lenovo/lps/sus/b/a;

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateAffair constructor,startupType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; affairId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/lenovo/lps/sus/b/m;->d:Z

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    invoke-static {}, Lcom/lenovo/lps/sus/b/e;->h()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->k:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    :cond_1
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    sget-object v0, Lcom/lenovo/lps/sus/c/e;->n:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    goto :goto_0

    :pswitch_0
    iput v5, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->u:Z

    new-instance v0, Lcom/lenovo/lps/sus/b/l;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-direct {v0, v2, v3, v5}, Lcom/lenovo/lps/sus/b/l;-><init>(JI)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    sget v1, Lcom/lenovo/lps/sus/b/h;->f:I

    iput v1, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iput v4, v0, Lcom/lenovo/lps/sus/b/l;->a:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v3, v3, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/l;->a(Lcom/lenovo/lps/sus/b/a;ZLjava/lang/String;)Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto :goto_1

    :pswitch_1
    iput v5, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->u:Z

    new-instance v0, Lcom/lenovo/lps/sus/b/l;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-direct {v0, v2, v3, v5}, Lcom/lenovo/lps/sus/b/l;-><init>(JI)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v1, p2, Lcom/lenovo/lps/sus/b/m;->m:I

    iput v1, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iput v4, v0, Lcom/lenovo/lps/sus/b/l;->a:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v3, v3, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/l;->a(Lcom/lenovo/lps/sus/b/a;ZLjava/lang/String;)Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :pswitch_2
    iput v5, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->u:Z

    new-instance v0, Lcom/lenovo/lps/sus/b/l;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-direct {v0, v2, v3, v5}, Lcom/lenovo/lps/sus/b/l;-><init>(JI)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v1, p2, Lcom/lenovo/lps/sus/b/m;->m:I

    iput v1, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iput v5, v0, Lcom/lenovo/lps/sus/b/l;->a:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/l;->a(Lcom/lenovo/lps/sus/b/a;ZLjava/lang/String;)Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :pswitch_3
    iput v7, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    new-instance v0, Lcom/lenovo/lps/sus/b/l;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-direct {v0, v2, v3, v7}, Lcom/lenovo/lps/sus/b/l;-><init>(JI)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v1, p2, Lcom/lenovo/lps/sus/b/m;->m:I

    iput v1, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-boolean v1, p2, Lcom/lenovo/lps/sus/b/m;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iput v4, v0, Lcom/lenovo/lps/sus/b/l;->a:I

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v3, v3, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/b/l;->a(Lcom/lenovo/lps/sus/b/a;ZLjava/lang/String;)Ljava/lang/String;

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    new-instance v0, Lcom/lenovo/lps/sus/b/k;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/k;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/b/a;->g:Lcom/lenovo/lps/sus/b/a;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v5, v0, Lcom/lenovo/lps/sus/b/k;->j:Z

    :goto_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v6, v0, Lcom/lenovo/lps/sus/b/k;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v6, v0, Lcom/lenovo/lps/sus/b/k;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v6, v0, Lcom/lenovo/lps/sus/b/k;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v0, Lcom/lenovo/lps/sus/b/k;->Q:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v0, Lcom/lenovo/lps/sus/b/k;->R:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->Q:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->a:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p2, Lcom/lenovo/lps/sus/b/m;->t:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->q:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->v:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/b/k;->q:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->E:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->k:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->m:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->n:J

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v0, Lcom/lenovo/lps/sus/b/k;->j:Z

    goto :goto_2

    :pswitch_5
    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->x:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    new-instance v0, Lcom/lenovo/lps/sus/b/k;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/k;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v5, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->x:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v0, Lcom/lenovo/lps/sus/b/k;->Q:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v0, Lcom/lenovo/lps/sus/b/k;->R:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->Q:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->a:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->k:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->m:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->n:J

    iget-object v0, p2, Lcom/lenovo/lps/sus/b/m;->x:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/lps/sus/b/g;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->channelKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGID:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->C:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/lenovo/lps/sus/b/g;->bPatchUpdateEnableFlag:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v5, v1, Lcom/lenovo/lps/sus/b/k;->G:Z

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v1, Lcom/lenovo/lps/sus/b/k;->E:J

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, v0, Lcom/lenovo/lps/sus/b/g;->j:J

    iput-wide v2, v1, Lcom/lenovo/lps/sus/b/k;->q:J

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGMD5:Ljava/lang/String;

    iput-object v0, v1, Lcom/lenovo/lps/sus/b/k;->D:Ljava/lang/String;

    :goto_3
    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v4, v1, Lcom/lenovo/lps/sus/b/k;->G:Z

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v1, Lcom/lenovo/lps/sus/b/k;->E:J

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGDownloadURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/lps/sus/b/k;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, v0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v1, Lcom/lenovo/lps/sus/b/k;->q:J

    goto :goto_3

    :pswitch_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    new-instance v0, Lcom/lenovo/lps/sus/b/d;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/d;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/d;->a:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget-object v1, p2, Lcom/lenovo/lps/sus/b/m;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget v1, p2, Lcom/lenovo/lps/sus/b/m;->A:I

    iput v1, v0, Lcom/lenovo/lps/sus/b/d;->c:I

    iput-boolean v4, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic h()[I
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/b/e;->z:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/b/a;->a()[Lcom/lenovo/lps/sus/b/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->d:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->c:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->e:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->b:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->a:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->g:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->f:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->h:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/lenovo/lps/sus/b/a;->i:Lcom/lenovo/lps/sus/b/a;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/lenovo/lps/sus/b/e;->z:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateAffair finish affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/l;->b()V

    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    if-eqz v0, :cond_2

    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->a()V

    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->a()V

    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    :cond_4
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FINISH:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "Finish"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-object v5, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-boolean v6, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    iput-boolean v6, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    iput-boolean v6, p0, Lcom/lenovo/lps/sus/b/e;->k:Z

    iput v6, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FINISH_UPDATEAFFAIR:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "FinishAffair"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 6

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "SUS_MSG_DOWNLOADCOMPLETE"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_DOWNLOADCOMPLETE:Lcom/lenovo/lps/sus/EventType;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->h()V

    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/lenovo/lps/sus/b/d;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/d;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v1

    iput v1, v0, Lcom/lenovo/lps/sus/b/d;->c:I

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/d;->a:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/d;->b:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UpdateAffairId"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_3
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    const-string v0, "SUS-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v3, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget v0, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/l;->b:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/c/f;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-boolean v0, v0, Lcom/lenovo/lps/sus/b/g;->e:Z

    if-nez v0, :cond_0

    iput-boolean v10, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/g;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v5, v5, Lcom/lenovo/lps/sus/b/g;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v7, v7, Lcom/lenovo/lps/sus/b/g;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v8, v8, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-static {v0, v2, v5, v7, v8}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->q:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isDisablePatchUpdateFromSHAREPREFERENCESFlag="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->q:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; oldVerCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; newvercode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->q:Z

    if-eqz v0, :cond_1

    iput-boolean v10, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_8

    const-string v0, "SUCCESS"

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v9, v0, :cond_8

    sget-object v0, Lcom/lenovo/lps/sus/b/a;->a:Lcom/lenovo/lps/sus/b/a;

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->c:Lcom/lenovo/lps/sus/b/a;

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->f()I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v2, v2, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v9, v0, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->d()I

    move-result v5

    if-gt v2, v5, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ne v9, v0, :cond_4

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->d()I

    move-result v0

    if-le v2, v0, :cond_4

    invoke-static {v10, v10}, Lcom/lenovo/lps/sus/a/i;->a(II)V

    :cond_4
    iget-wide v6, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v5, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    invoke-static {v6, v7, v0, v2, v5}, Lcom/lenovo/lps/sus/c/f;->a(JZLcom/lenovo/lps/sus/b/l;Lcom/lenovo/lps/sus/b/g;)Lcom/lenovo/lps/sus/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    new-instance v0, Lcom/lenovo/lps/sus/b/k;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/k;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v3, v0, Lcom/lenovo/lps/sus/b/k;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object v4, v0, Lcom/lenovo/lps/sus/b/k;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->Q:Z

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v9, v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v9, v0, Lcom/lenovo/lps/sus/b/k;->R:Z

    :goto_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->a:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->v:Z

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->k:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->x:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->m:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->y:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->n:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->B:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/b/g;->j:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->q:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGID:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGMD5:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->E:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v9, v0, Lcom/lenovo/lps/sus/b/k;->G:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->I:Ljava/lang/String;

    :goto_3
    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SilentInstall sendEvent SUS_UPDATEPROMPT_USER_CONFIRM"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->f:Lcom/lenovo/lps/sus/b/b;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/b;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v10, v0, Lcom/lenovo/lps/sus/b/k;->R:Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGDownloadURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->q:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGID:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGMD5:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-wide v2, v1, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    iput-wide v2, v0, Lcom/lenovo/lps/sus/b/k;->E:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-boolean v10, v0, Lcom/lenovo/lps/sus/b/k;->G:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/l;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/k;->I:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/b;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_9

    const-string v0, "SUCCESS"

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    iget v1, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v0, v1, :cond_9

    const-string v0, "SUCCESS"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/f;->a(Lcom/lenovo/lps/sus/b/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/g;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    sget-object v4, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_c

    const-string v0, "LATESTVERSION"

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "LATESTVERSION"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v9, v0, :cond_b

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    if-eqz v0, :cond_a

    const-string v0, "SUS_MSG_LATESTVERSION"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/f;->a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v4

    invoke-static {v2, v3, v1, v0, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    if-eqz v0, :cond_f

    const-string v0, "NOTFOUND"

    iget-object v1, p0, Lcom/lenovo/lps/sus/b/e;->h:Lcom/lenovo/lps/sus/b/g;

    iget-object v1, v1, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "NOTFOUND"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    if-ne v9, v0, :cond_e

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    if-eqz v0, :cond_d

    const-string v0, "SUS_MSG_NOTFOUND"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_d
    :goto_5
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->e()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/f;->a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v4

    invoke-static {v2, v3, v1, v0, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->e()I

    move-result v0

    if-ne v0, v9, :cond_11

    const-string/jumbo v0, "networkUnavailable"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1, v6, v9, v9}, Lcom/lenovo/lps/sus/a/c;->b(JLcom/lenovo/lps/sus/SUSListener;ZZ)V

    :cond_10
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v0, "query exception"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->e:Z

    if-eqz v0, :cond_12

    const-string v0, "SUS_MSG_UPDATE_EXCEPTION"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/f;->a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v4

    invoke-static {v2, v3, v1, v0, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_1

    :cond_13
    move-object v2, v6

    move-object v4, v6

    move-object v3, v6

    move-object v1, v6

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->p:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->p:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lcom/lenovo/lps/sus/b/h;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/lps/sus/b/e;->q:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2, p3, v0}, Lcom/lenovo/lps/sus/SUSPatchUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->r:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/SUSPatchUtil;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/e;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    return v0

    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/lenovo/lps/sus/b/e;->s:Z

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->b()J

    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    return-wide v0
.end method

.method public e()J
    .locals 8

    const-wide/16 v6, -0x1

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->n:Z

    if-eqz v0, :cond_2

    :cond_0
    move-wide v0, v6

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    const-string/jumbo v4, "the updateAffair pengding!"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v6

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    packed-switch v0, :pswitch_data_0

    :cond_5
    move-wide v0, v6

    :goto_1
    cmp-long v2, v6, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->f:Lcom/lenovo/lps/sus/b/l;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/l;->c()J

    move-result-wide v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->e()J

    move-result-wide v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->g:Lcom/lenovo/lps/sus/b/d;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/d;->b()J

    move-result-wide v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public f()J
    .locals 4

    const-wide/16 v2, -0x1

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->b()J

    move-result-wide v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g()J
    .locals 4

    const-wide/16 v2, -0x1

    iget v0, p0, Lcom/lenovo/lps/sus/b/e;->o:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->c()J

    move-result-wide v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->m:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
