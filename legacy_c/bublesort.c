    #include<stdio.h>
    void sort(int[],int);
    main()
    {
     int n=8, v[]={3,0,5,1,8,9,2,4},i;
     sort(v,n);
     printf("VETOR ORDENADO: [ ");
     for(i=0;i<n;i++)
      printf("%d ",v[i]);
     printf("]\n");
    }
    void sort(int v[],int n)
    {
     int i,j,temp;
     for(j=0;j<7;j++)
      for (i=0;i<7;i++)
       if(v[i]>v[i+1])//ATENCAO: NAO CONFUNDA i+1 AQUI COM i++
       {
        temp=v[i+1];
        v[i+1]=v[i];
        v[i]=temp;
       }
    }     
