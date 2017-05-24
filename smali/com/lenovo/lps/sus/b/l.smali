.class public Lcom/lenovo/lps/sus/b/l;
.super Ljava/lang/Object;


# static fields
.field static final h:Ljava/lang/String; = "tags"

.field private static synthetic m:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field private i:I

.field private j:J

.field private k:Lcom/lenovo/lps/sus/a/b;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/lenovo/lps/sus/b/l;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    iput v3, p0, Lcom/lenovo/lps/sus/b/l;->a:I

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    iput v3, p0, Lcom/lenovo/lps/sus/b/l;->e:I

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    iput-object v2, p0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    iput-wide p1, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    iput p3, p0, Lcom/lenovo/lps/sus/b/l;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query constructor, affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/b/l;->m:[I

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
    sput-object v0, Lcom/lenovo/lps/sus/b/l;->m:[I

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
.method public a(Lcom/lenovo/lps/sus/b/a;ZLjava/lang/String;)Ljava/lang/String;
    .locals 31

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/sus/b/l;->d()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/sus/b/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    return-object v1

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/lps/sus/b/h;->b:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    sget v6, Lcom/lenovo/lps/sus/b/h;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/lenovo/lps/sus/b/h;->g:Ljava/lang/String;

    sget-object v8, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    const-string/jumbo v9, "tags"

    sget-object v10, Lcom/lenovo/lps/sus/b/i;->l:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/lps/sus/b/i;->m:Ljava/lang/String;

    sget-object v12, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v13, Lcom/lenovo/lps/sus/b/i;->f:Ljava/lang/String;

    sget-object v14, Lcom/lenovo/lps/sus/b/i;->g:Ljava/lang/String;

    sget-object v15, Lcom/lenovo/lps/sus/b/i;->h:Ljava/lang/String;

    sget-object v16, Lcom/lenovo/lps/sus/b/i;->i:Ljava/lang/String;

    sget-object v17, Lcom/lenovo/lps/sus/b/i;->j:Ljava/lang/String;

    sget-object v18, Lcom/lenovo/lps/sus/b/i;->k:Ljava/lang/String;

    sget-object v19, Lcom/lenovo/lps/sus/b/i;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    sget-object v21, Lcom/lenovo/lps/sus/b/i;->o:Ljava/lang/String;

    sget-object v22, Lcom/lenovo/lps/sus/b/i;->p:Ljava/lang/String;

    sget-object v23, Lcom/lenovo/lps/sus/b/i;->q:Ljava/lang/String;

    sget-object v24, Lcom/lenovo/lps/sus/b/i;->r:Ljava/lang/String;

    sget-object v25, Lcom/lenovo/lps/sus/b/i;->t:Ljava/lang/String;

    sget-object v26, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sget-object v27, Lcom/lenovo/lps/sus/b/i;->d:Ljava/lang/String;

    sget-object v28, Lcom/lenovo/lps/sus/b/i;->e:Ljava/lang/String;

    sget-object v29, Lcom/lenovo/lps/sus/b/i;->s:Ljava/lang/String;

    sget-object v30, Lcom/lenovo/lps/sus/b/i;->u:Ljava/lang/String;

    invoke-static/range {v1 .. v30}, Lcom/lenovo/lps/sus/c/b;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/lps/sus/b/h;->b:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    sget v6, Lcom/lenovo/lps/sus/b/h;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/lenovo/lps/sus/b/h;->g:Ljava/lang/String;

    sget-object v8, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    const-string/jumbo v9, "tags"

    sget-object v10, Lcom/lenovo/lps/sus/b/i;->l:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/lps/sus/b/i;->m:Ljava/lang/String;

    sget-object v12, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v13, Lcom/lenovo/lps/sus/b/i;->f:Ljava/lang/String;

    sget-object v14, Lcom/lenovo/lps/sus/b/i;->g:Ljava/lang/String;

    sget-object v15, Lcom/lenovo/lps/sus/b/i;->h:Ljava/lang/String;

    sget-object v16, Lcom/lenovo/lps/sus/b/i;->i:Ljava/lang/String;

    sget-object v17, Lcom/lenovo/lps/sus/b/i;->j:Ljava/lang/String;

    sget-object v18, Lcom/lenovo/lps/sus/b/i;->k:Ljava/lang/String;

    sget-object v19, Lcom/lenovo/lps/sus/b/i;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    sget-object v21, Lcom/lenovo/lps/sus/b/i;->o:Ljava/lang/String;

    sget-object v22, Lcom/lenovo/lps/sus/b/i;->p:Ljava/lang/String;

    sget-object v23, Lcom/lenovo/lps/sus/b/i;->q:Ljava/lang/String;

    sget-object v24, Lcom/lenovo/lps/sus/b/i;->r:Ljava/lang/String;

    sget-object v25, Lcom/lenovo/lps/sus/b/i;->t:Ljava/lang/String;

    sget-object v26, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sget-object v27, Lcom/lenovo/lps/sus/b/i;->d:Ljava/lang/String;

    sget-object v28, Lcom/lenovo/lps/sus/b/i;->e:Ljava/lang/String;

    sget-object v29, Lcom/lenovo/lps/sus/b/i;->s:Ljava/lang/String;

    sget-object v30, Lcom/lenovo/lps/sus/b/i;->u:Ljava/lang/String;

    invoke-static/range {v1 .. v30}, Lcom/lenovo/lps/sus/c/b;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    const-string/jumbo v9, "tags"

    sget-object v10, Lcom/lenovo/lps/sus/b/i;->l:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/lps/sus/b/i;->m:Ljava/lang/String;

    sget-object v12, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v13, Lcom/lenovo/lps/sus/b/i;->f:Ljava/lang/String;

    sget-object v14, Lcom/lenovo/lps/sus/b/i;->g:Ljava/lang/String;

    sget-object v15, Lcom/lenovo/lps/sus/b/i;->h:Ljava/lang/String;

    sget-object v16, Lcom/lenovo/lps/sus/b/i;->i:Ljava/lang/String;

    sget-object v17, Lcom/lenovo/lps/sus/b/i;->j:Ljava/lang/String;

    sget-object v18, Lcom/lenovo/lps/sus/b/i;->k:Ljava/lang/String;

    sget-object v19, Lcom/lenovo/lps/sus/b/i;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    sget-object v21, Lcom/lenovo/lps/sus/b/i;->o:Ljava/lang/String;

    sget-object v22, Lcom/lenovo/lps/sus/b/i;->p:Ljava/lang/String;

    sget-object v23, Lcom/lenovo/lps/sus/b/i;->q:Ljava/lang/String;

    sget-object v24, Lcom/lenovo/lps/sus/b/i;->r:Ljava/lang/String;

    sget-object v25, Lcom/lenovo/lps/sus/b/i;->t:Ljava/lang/String;

    sget-object v26, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sget-object v27, Lcom/lenovo/lps/sus/b/i;->d:Ljava/lang/String;

    sget-object v28, Lcom/lenovo/lps/sus/b/i;->e:Ljava/lang/String;

    sget-object v29, Lcom/lenovo/lps/sus/b/i;->s:Ljava/lang/String;

    sget-object v30, Lcom/lenovo/lps/sus/b/i;->u:Ljava/lang/String;

    invoke-static/range {v1 .. v30}, Lcom/lenovo/lps/sus/c/b;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/b/l;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    const-string/jumbo v9, "tags"

    sget-object v10, Lcom/lenovo/lps/sus/b/i;->l:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/lps/sus/b/i;->m:Ljava/lang/String;

    sget-object v12, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v13, Lcom/lenovo/lps/sus/b/i;->f:Ljava/lang/String;

    sget-object v14, Lcom/lenovo/lps/sus/b/i;->g:Ljava/lang/String;

    sget-object v15, Lcom/lenovo/lps/sus/b/i;->h:Ljava/lang/String;

    sget-object v16, Lcom/lenovo/lps/sus/b/i;->i:Ljava/lang/String;

    sget-object v17, Lcom/lenovo/lps/sus/b/i;->j:Ljava/lang/String;

    sget-object v18, Lcom/lenovo/lps/sus/b/i;->k:Ljava/lang/String;

    sget-object v19, Lcom/lenovo/lps/sus/b/i;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    sget-object v21, Lcom/lenovo/lps/sus/b/i;->o:Ljava/lang/String;

    sget-object v22, Lcom/lenovo/lps/sus/b/i;->p:Ljava/lang/String;

    sget-object v23, Lcom/lenovo/lps/sus/b/i;->q:Ljava/lang/String;

    sget-object v24, Lcom/lenovo/lps/sus/b/i;->r:Ljava/lang/String;

    sget-object v25, Lcom/lenovo/lps/sus/b/i;->t:Ljava/lang/String;

    sget-object v26, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sget-object v27, Lcom/lenovo/lps/sus/b/i;->d:Ljava/lang/String;

    sget-object v28, Lcom/lenovo/lps/sus/b/i;->e:Ljava/lang/String;

    sget-object v29, Lcom/lenovo/lps/sus/b/i;->s:Ljava/lang/String;

    sget-object v30, Lcom/lenovo/lps/sus/b/i;->u:Ljava/lang/String;

    invoke-static/range {v1 .. v30}, Lcom/lenovo/lps/sus/c/b;->b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x2

    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/b/l;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/lps/sus/b/l;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/lps/sus/b/l;->d:Ljava/lang/String;

    const-string/jumbo v9, "tags"

    sget-object v10, Lcom/lenovo/lps/sus/b/i;->l:Ljava/lang/String;

    sget-object v11, Lcom/lenovo/lps/sus/b/i;->m:Ljava/lang/String;

    sget-object v12, Lcom/lenovo/lps/sus/b/i;->b:Ljava/lang/String;

    sget-object v13, Lcom/lenovo/lps/sus/b/i;->f:Ljava/lang/String;

    sget-object v14, Lcom/lenovo/lps/sus/b/i;->g:Ljava/lang/String;

    sget-object v15, Lcom/lenovo/lps/sus/b/i;->h:Ljava/lang/String;

    sget-object v16, Lcom/lenovo/lps/sus/b/i;->i:Ljava/lang/String;

    sget-object v17, Lcom/lenovo/lps/sus/b/i;->j:Ljava/lang/String;

    sget-object v18, Lcom/lenovo/lps/sus/b/i;->k:Ljava/lang/String;

    sget-object v19, Lcom/lenovo/lps/sus/b/i;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/l;->g:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    sget-object v21, Lcom/lenovo/lps/sus/b/i;->o:Ljava/lang/String;

    sget-object v22, Lcom/lenovo/lps/sus/b/i;->p:Ljava/lang/String;

    sget-object v23, Lcom/lenovo/lps/sus/b/i;->q:Ljava/lang/String;

    sget-object v24, Lcom/lenovo/lps/sus/b/i;->r:Ljava/lang/String;

    sget-object v25, Lcom/lenovo/lps/sus/b/i;->t:Ljava/lang/String;

    sget-object v26, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sget-object v27, Lcom/lenovo/lps/sus/b/i;->d:Ljava/lang/String;

    sget-object v28, Lcom/lenovo/lps/sus/b/i;->e:Ljava/lang/String;

    sget-object v29, Lcom/lenovo/lps/sus/b/i;->s:Ljava/lang/String;

    sget-object v30, Lcom/lenovo/lps/sus/b/i;->u:Ljava/lang/String;

    invoke-static/range {v1 .. v30}, Lcom/lenovo/lps/sus/c/b;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/a/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query finish affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/l;->a()V

    return-void
.end method

.method public c()J
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query start affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/sus/a/b;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    iget v1, p0, Lcom/lenovo/lps/sus/b/l;->i:I

    iget-object v4, p0, Lcom/lenovo/lps/sus/b/l;->l:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/lenovo/lps/sus/a/b;-><init>(JILjava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/l;->k:Lcom/lenovo/lps/sus/a/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/a/b;->start()V

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/l;->j:J

    return-wide v0
.end method
